from migen import *
from migen.genlib.fifo import _FIFOInterface, AsyncFIFO, SyncFIFOBuffered

from .. import AccessMultiplexer, AccessMultiplexerInterface


class SimulationMultiplexer(AccessMultiplexer):
    def claim_interface(self, applet, args):
        iface = SimulationMultiplexerInterface(applet)
        self.submodules += iface
        return iface


class SimulationMultiplexerInterface(AccessMultiplexerInterface):
    def __init__(self, applet):
        super().__init__(applet)

        self.in_fifo  = None
        self.out_fifo = None

    def get_pin_name(self, pin):
        return str(pin)

    def build_pin_tristate(self, pin, oe, o, i):
        pass

    def _make_fifo(self, arbiter_side, logic_side, cd_logic, depth):
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

        return fifo

    def get_in_fifo(self, depth=512, streaming=True, clock_domain=None):
        assert self.in_fifo is None

        self.submodules.in_fifo = self._make_fifo(
            arbiter_side="read", logic_side="write", cd_logic=clock_domain, depth=depth)
        return self.in_fifo

    def get_out_fifo(self, depth=512, clock_domain=None):
        assert self.out_fifo is None

        self.submodules.out_fifo = self._make_fifo(
            arbiter_side="write", logic_side="read", cd_logic=clock_domain, depth=depth)
        return self.out_fifo

    def get_inout_fifo(self, **kwargs):
        return self.get_in_fifo(**kwargs), self.get_out_fifo(**kwargs)
