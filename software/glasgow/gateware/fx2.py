# Synchronous FIFO timings reference:
# http://www.cypress.com/file/138911/download#page=53

# All timings in ns referenced to positive edge of non-inverted IFCLK.
# "Int" means IFCLK sourced by FX2, "Ext" means IFCLK sourced by FPGA.
#
#                       Int Period  Ext Period
# IFCLK                 >20.83      >20.83 <200
# IFCLK (48 MHz)                20.83
# IFCLK (30 MHz)                33.33
#
#                       Int S/H     Ext S/H
# SLRD                  18.7/0.0    12.7/3.7
# SLWR                  10.4/0.0    12.1/3.6
# PKTEND                14.6/0.0    8.6/2.5
# FIFOADR                     25.0/10.0
# FIFODATA              9.2/0.0     3.2/4.5
#
#                       Int Setup   Ext Setup
# IFCLK->FLAG           9.5         13.5
# IFCLK->FIFODATA       11.0        15.0
# SLOE->FIFODATA                10.5
# FIFOADR->FLAG                 10.7
# FIFOADR->FIFODATA             14.3

from migen import *
from migen.genlib.fsm import *
from migen.genlib.fifo import _FIFOInterface, AsyncFIFO, SyncFIFO, SyncFIFOBuffered


__all__ = ["FX2Arbiter"]


class _DummyFIFO(Module, _FIFOInterface):
    def __init__(self, width):
        super().__init__(width, 0)

        self.submodules.fifo = _FIFOInterface(width, 0)


class _FIFOWithOverflow(Module, _FIFOInterface):
    def __init__(self, fifo, overflow_depth=2):
        _FIFOInterface.__init__(self, fifo.width, fifo.depth)

        self.submodules.fifo     = fifo
        self.submodules.overflow = overflow = SyncFIFO(fifo.width, overflow_depth)

        self.dout     = fifo.dout
        self.re       = fifo.re
        self.readable = fifo.readable

        ###

        self.comb += [
            If(overflow.readable,
                fifo.din.eq(overflow.dout),
                fifo.we.eq(1),
                overflow.re.eq(fifo.writable)
            ),
            If(fifo.writable & ~overflow.readable,
                fifo.din.eq(self.din),
                fifo.we.eq(self.we),
                self.writable.eq(fifo.writable)
            ).Else(
                overflow.din.eq(self.din),
                overflow.we.eq(self.we),
                self.writable.eq(overflow.writable)
            )
        ]


class _RegisteredTristate(Module):
    def __init__(self, io):

        self.oe = Signal()
        self.o  = Signal.like(io)
        self.i  = Signal.like(io)

        def get_bit(signal, bit):
            return signal[bit] if signal.nbits > 0 else signal

        for bit in range(io.nbits):
            self.specials += \
                Instance("SB_IO",
                    # PIN_INPUT_REGISTERED|PIN_OUTPUT_REGISTERED_ENABLE_REGISTERED
                    p_PIN_TYPE=C(0b110100, 6),
                    io_PACKAGE_PIN=get_bit(io, bit),
                    i_OUTPUT_ENABLE=self.oe,
                    i_INPUT_CLK=ClockSignal(),
                    i_OUTPUT_CLK=ClockSignal(),
                    i_D_OUT_0=get_bit(self.o, bit),
                    o_D_IN_0=get_bit(self.i, bit),
                )


class _FX2Bus(Module):
    def __init__(self, pads):
        self.submodules.fifoadr_t = _RegisteredTristate(pads.fifoadr)
        self.submodules.flag_t    = _RegisteredTristate(pads.flag)
        self.submodules.fd_t      = _RegisteredTristate(pads.fd)
        self.submodules.sloe_t    = _RegisteredTristate(pads.sloe)
        self.submodules.slrd_t    = _RegisteredTristate(pads.slrd)
        self.submodules.slwr_t    = _RegisteredTristate(pads.slwr)
        self.submodules.pktend_t  = _RegisteredTristate(pads.pktend)


class FX2Arbiter(Module):
    """
    FX2 FIFO bus master.

    Shuttles data between FX2 and FIFOs in bursts.

    The arbiter supports up to four FIFOs organized as ``OUT, OUT, IN, IN``.
    FIFOs that are never requested are not implemented and behave as if they
    are never readable or writable.
    """
    def __init__(self, pads):
        self.submodules.bus = _FX2Bus(pads)

        self.out_fifos = Array([_FIFOWithOverflow(_DummyFIFO(width=8))
                                for _ in range(2)])
        self. in_fifos = Array([_DummyFIFO(width=8)
                                for _ in range(2)])
        self.streaming = Array([False for _ in range(2)])

    def do_finalize(self):
        bus  = self.bus
        flag = Signal(4)
        addr = Signal(2)
        data = TSTriple(8)
        fdoe = Signal()
        sloe = Signal()
        slrd = Signal()
        slwr = Signal()
        pend = Signal()
        rdy  = Signal(4)
        self.comb += [
            bus.fifoadr_t.oe.eq(1),
            bus.fifoadr_t.o.eq(addr),
            flag.eq(bus.flag_t.i),
            rdy.eq(Cat([fifo.fifo.writable for fifo in self.out_fifos] +
                       [fifo.readable for fifo in self.in_fifos]) &
                   flag),
            self.out_fifos[addr[0]].din.eq(bus.fd_t.i),
            bus.fd_t.o.eq(self.in_fifos[addr[0]].dout),
            bus.fd_t.oe.eq(fdoe),
            bus.sloe_t.oe.eq(1),
            bus.sloe_t.o.eq(~sloe),
            bus.slrd_t.oe.eq(1),
            bus.slrd_t.o.eq(~slrd),
            bus.slwr_t.oe.eq(1),
            bus.slwr_t.o.eq(~slwr),
            bus.pktend_t.oe.eq(1),
            bus.pktend_t.o.eq(~pend),
        ]

        # Calculate the address of the next ready FIFO in a round robin process.
        naddr = Signal(2)
        naddr_c = {}
        for addr_v in range(2**addr.nbits):
            for rdy_v in range(2**rdy.nbits):
                for offset in range(2**addr.nbits):
                    naddr_v = (addr_v + offset) % 2**addr.nbits
                    if rdy_v & (1 << naddr_v):
                        break
                else:
                    naddr_v = (addr_v + 1) % 2**addr.nbits
                naddr_c[rdy_v|(addr_v<<rdy.nbits)] = naddr.eq(naddr_v)
        self.comb += Case(Cat(rdy, addr), naddr_c)

        self.submodules.fsm = FSM(reset_state="NEXT")
        # SLOE to FIFODATA setup: 1 cycle
        # FIFOADR to FIFODATA setup: 2 cycles
        self.fsm.act("NEXT",
            NextValue(sloe, 0),
            NextValue(fdoe, 0),
            NextValue(addr, naddr),
            If(rdy,
                NextState("DRIVE")
            )
        )
        self.fsm.act("DRIVE",
             If(addr[1],
                 NextValue(fdoe, 1),
             ).Else(
                 NextValue(sloe, 1),
             ),
             NextState("SETUP")
        )
        self.fsm.act("SETUP",
            If(addr[1],
                NextState("SETUP-IN")
            ).Else(
                NextState("SETUP-OUT")
            )
        )
        self.fsm.act("SETUP-IN",
            NextState("XFER-IN")
        )
        self.fsm.act("XFER-IN",
            If(rdy & (1 << addr),
                slwr.eq(1),
                self.in_fifos[addr[0]].re.eq(1),
            ).Elif(((flag & (1 << addr)) == 0) &
                   ~self.in_fifos[addr[0]].readable &
                   self.streaming[addr[0]],
                # The ~FULL flag went down, and it goes down one sample earlier than the actual
                # FULL condition. So we have one more byte free. However, the FPGA-side streaming
                # FIFO became empty simultaneously.
                #
                # If we schedule the next FIFO right now, the ~FULL flag will never come back down,
                # so disregard the fact that the FIFO is streaming just for this corner case,
                # and commit a packet one byte shorter than the complete FIFO.
                #
                # This shouldn't cause any problems.
                pend.eq(1),
                NextState("NEXT")
            ).Elif(((flag & (1 << addr)) != 0) &
                   ~self.streaming[addr[0]],
                # The FPGA-side non-streaming FIFO is empty, but the FX2-side FIFO is not full yet.
                # Commit the short packet.
                pend.eq(1),
                NextState("NEXT")
            ).Else(
                # Either the FPGA-side streaming FIFO is empty, or the FX2-side FIFO is full.
                # FX2 automatically commits a full FIFO, so we don't need to do anything here.
                NextState("NEXT")
            )
        )
        self.fsm.act("SETUP-OUT",
            slrd.eq(1),
            NextState("XFER-OUT")
        )
        self.fsm.act("XFER-OUT",
            self.out_fifos[addr[0]].we.eq((flag & (1 << addr)) != 0),
            If(rdy & (1 << addr),
                slrd.eq(self.out_fifos[addr[0]].fifo.writable)
            ).Else(
                NextState("NEXT")
            )
        )

    def _make_fifo(self, arbiter_side, logic_side, cd_logic, depth, wrapper=lambda x: x):
        if cd_logic is None:
            fifo = SyncFIFOBuffered(8, depth)
        else:
            assert isinstance(cd_logic, ClockDomain)

            fifo = ClockDomainsRenamer({
                arbiter_side: "sys",
                logic_side:   "logic",
            })(AsyncFIFO(8, depth))

            fifo.clock_domains.cd_logic = ClockDomain()
            self.comb += fifo.cd_logic.clk.eq(cd_logic.clk)
            if cd_logic.rst is not None:
                self.comb += fifo.cd_logic.rst.eq(cd_logic.rst)

        fifo = wrapper(fifo)
        self.submodules += fifo
        return fifo

    def get_out_fifo(self, n, depth=512, clock_domain=None):
        assert 0 <= n < 2
        assert isinstance(self.out_fifos[n].fifo, _DummyFIFO)

        fifo = self._make_fifo(arbiter_side="write", logic_side="read",
                               cd_logic=clock_domain, depth=depth,
                               wrapper=lambda x: _FIFOWithOverflow(x))
        self.out_fifos[n] = fifo
        return fifo

    def get_in_fifo(self, n, depth=512, streaming=True, clock_domain=None):
        assert 0 <= n < 2
        assert isinstance(self.in_fifos[n], _DummyFIFO)

        fifo = self._make_fifo(arbiter_side="read", logic_side="write",
                               cd_logic=clock_domain, depth=depth)
        self.in_fifos[n] = fifo
        self.streaming[n] = streaming
        return fifo
