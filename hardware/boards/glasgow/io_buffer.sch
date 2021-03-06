EESchema Schematic File Version 4
LIBS:glasgow-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "I/O Buffer"
Date ""
Rev "B"
Comp "whitequark research"
Comment1 "Glasgow Debug Tool"
Comment2 "Calculations by @awygle"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Logic_LevelTranslator:FXMA108 U5
U 1 1 5AF87C59
P 2400 3150
AR Path="/5AF7D604/5AF87C59" Ref="U5"  Part="1" 
AR Path="/5AFBDC9E/5AF87C59" Ref="U6"  Part="1" 
F 0 "U5" H 2150 3700 50  0000 C CNN
F 1 "FXMA108BQX" H 2800 3700 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-20-1EP_2.5x4.5mm_P0.5mm_EP1x2.9mm" H 4000 3550 50  0001 C CNN
F 3 "http://www.onsemi.com/PowerSolutions/product.do?id=FXMA108" H 2400 3200 50  0001 C CNN
F 4 "Fairchild" H 0   0   50  0001 C CNN "Mfg"
F 5 "FXMA108BQX" H 0   0   50  0001 C CNN "MPN"
	1    2400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5AF87D7F
P 2400 3800
AR Path="/5AF7D604/5AF87D7F" Ref="#PWR0101"  Part="1" 
AR Path="/5AFBDC9E/5AF87D7F" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0101" H 2400 3550 50  0001 C CNN
F 1 "GND" H 2405 3627 50  0000 C CNN
F 2 "" H 2400 3800 50  0001 C CNN
F 3 "" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3750 2400 3800
$Comp
L power:+3.3V #PWR0102
U 1 1 5AF87E10
P 2300 2500
AR Path="/5AF7D604/5AF87E10" Ref="#PWR0102"  Part="1" 
AR Path="/5AFBDC9E/5AF87E10" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0102" H 2300 2350 50  0001 C CNN
F 1 "+3.3V" H 2315 2673 50  0000 C CNN
F 2 "" H 2300 2500 50  0001 C CNN
F 3 "" H 2300 2500 50  0001 C CNN
	1    2300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2500 2300 2550
Wire Wire Line
	1950 2750 2000 2750
Wire Wire Line
	1400 2850 1450 2850
Wire Wire Line
	1400 2950 1450 2950
Wire Wire Line
	1400 3050 1450 3050
Wire Wire Line
	1400 3150 1450 3150
Wire Wire Line
	1400 3250 1450 3250
Wire Wire Line
	1400 3350 1450 3350
Wire Wire Line
	1400 3450 1450 3450
Wire Wire Line
	1400 3550 1450 3550
Wire Wire Line
	2800 2850 2950 2850
Wire Wire Line
	2800 2950 2950 2950
Wire Wire Line
	2800 3050 2950 3050
Wire Wire Line
	2800 3150 2950 3150
Wire Wire Line
	2800 3250 2950 3250
Wire Wire Line
	2800 3350 2950 3350
Wire Wire Line
	2800 3450 2950 3450
Wire Wire Line
	2800 3550 2950 3550
Wire Wire Line
	4050 2850 4000 2850
Wire Wire Line
	4050 2950 4000 2950
Wire Wire Line
	4050 3050 4000 3050
Wire Wire Line
	4050 3150 4000 3150
Wire Wire Line
	4050 3250 4000 3250
Wire Wire Line
	4050 3350 4000 3350
Wire Wire Line
	4050 3450 4000 3450
Wire Wire Line
	4050 3550 4000 3550
Wire Wire Line
	4050 3650 4000 3650
$Comp
L power:GND #PWR0103
U 1 1 5AF8878D
P 4050 3700
AR Path="/5AF7D604/5AF8878D" Ref="#PWR0103"  Part="1" 
AR Path="/5AFBDC9E/5AF8878D" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0103" H 4050 3450 50  0001 C CNN
F 1 "GND" H 4055 3527 50  0000 C CNN
F 2 "" H 4050 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0001 C CNN
	1    4050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3700 4050 3650
Connection ~ 4050 2950
Wire Wire Line
	4050 2950 4050 2850
Connection ~ 4050 3050
Wire Wire Line
	4050 3050 4050 2950
Connection ~ 4050 3150
Wire Wire Line
	4050 3150 4050 3050
Connection ~ 4050 3250
Wire Wire Line
	4050 3250 4050 3150
Connection ~ 4050 3350
Wire Wire Line
	4050 3350 4050 3250
Connection ~ 4050 3450
Wire Wire Line
	4050 3450 4050 3350
Connection ~ 4050 3550
Wire Wire Line
	4050 3550 4050 3450
Connection ~ 4050 3650
Wire Wire Line
	4050 3650 4050 3550
Wire Wire Line
	3450 2650 3450 2750
Wire Wire Line
	3450 2750 3500 2750
Text HLabel 1400 2850 0    50   Input ~ 0
Q0
Text HLabel 1400 2950 0    50   Input ~ 0
Q1
Text HLabel 1400 3050 0    50   Input ~ 0
Q2
Text HLabel 1400 3150 0    50   Input ~ 0
Q3
Text HLabel 1400 3250 0    50   Input ~ 0
Q4
Text HLabel 1400 3350 0    50   Input ~ 0
Q5
Text HLabel 1400 3450 0    50   Input ~ 0
Q6
Text HLabel 1400 3550 0    50   Input ~ 0
Q7
Text HLabel 1950 2750 0    50   Input ~ 0
~OE
Wire Wire Line
	2500 2550 2500 2500
Wire Wire Line
	2500 2500 3100 2500
Text Label 3550 2650 0    50   ~ 0
VSENSE
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5AFC7F21
P 3700 3150
AR Path="/5AF7D604/5AFC7F21" Ref="J2"  Part="1" 
AR Path="/5AFBDC9E/5AFC7F21" Ref="J3"  Part="1" 
F 0 "J2" H 3750 2550 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 3750 3676 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 3700 3150 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/276/0878342019_PCB_HEADERS-152849.pdf" H 3700 3150 50  0001 C CNN
F 4 "Molex" H 0   0   50  0001 C CNN "Mfg"
F 5 "87834-2019" H 0   0   50  0001 C CNN "MPN"
	1    3700 3150
	1    0    0    -1  
$EndComp
Text Label 2850 2850 0    50   ~ 0
Y0
Text Label 2850 2950 0    50   ~ 0
Y1
Text Label 2850 3050 0    50   ~ 0
Y2
Text Label 2850 3150 0    50   ~ 0
Y3
Text Label 2850 3250 0    50   ~ 0
Y4
Text Label 2850 3350 0    50   ~ 0
Y5
Text Label 2850 3450 0    50   ~ 0
Y6
Text Label 2850 3550 0    50   ~ 0
Y7
NoConn ~ 3500 3650
Text HLabel 2800 4850 0    50   Input ~ 0
SDA
Text HLabel 2800 4750 0    50   Input ~ 0
SCL
$Comp
L Device:C C30
U 1 1 5AF3BE9B
P 2500 1500
AR Path="/5AF7D604/5AF3BE9B" Ref="C30"  Part="1" 
AR Path="/5AFBDC9E/5AF3BE9B" Ref="C32"  Part="1" 
F 0 "C30" H 2615 1546 50  0000 L CNN
F 1 "u1" H 2615 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2538 1350 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 2500 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H 0   0   50  0001 C CNN "MPN"
	1    2500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C29
U 1 1 5AF3BEA3
P 2150 1500
AR Path="/5AF7D604/5AF3BEA3" Ref="C29"  Part="1" 
AR Path="/5AFBDC9E/5AF3BEA3" Ref="C31"  Part="1" 
F 0 "C29" H 2265 1546 50  0000 L CNN
F 1 "4u7" H 2265 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 2188 1350 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_commercial_general_en-837201.pdf" H 2150 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "LMK107BJ475KAHT" H 0   0   50  0001 C CNN "MPN"
	1    2150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1300 2500 1350
Wire Wire Line
	2150 1650 2150 1700
Wire Wire Line
	2500 1700 2500 1650
$Comp
L power:GND #PWR0115
U 1 1 5AF3E452
P 2300 1750
AR Path="/5AF7D604/5AF3E452" Ref="#PWR0115"  Part="1" 
AR Path="/5AFBDC9E/5AF3E452" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0115" H 2300 1500 50  0001 C CNN
F 1 "GND" H 2305 1577 50  0000 C CNN
F 2 "" H 2300 1750 50  0001 C CNN
F 3 "" H 2300 1750 50  0001 C CNN
	1    2300 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1700 2300 1700
Wire Wire Line
	2300 1750 2300 1700
Connection ~ 2300 1700
Wire Wire Line
	2300 1700 2500 1700
Wire Wire Line
	2150 1350 2150 1300
Wire Wire Line
	2150 1300 2300 1300
$Comp
L power:+3.3V #PWR0116
U 1 1 5AF40DD5
P 2300 1250
AR Path="/5AF7D604/5AF40DD5" Ref="#PWR0116"  Part="1" 
AR Path="/5AFBDC9E/5AF40DD5" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0116" H 2300 1100 50  0001 C CNN
F 1 "+3.3V" H 2315 1423 50  0000 C CNN
F 2 "" H 2300 1250 50  0001 C CNN
F 3 "" H 2300 1250 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1250 2300 1300
Connection ~ 2300 1300
Wire Wire Line
	2300 1300 2500 1300
$Comp
L Analog_DAC:DAC081C081CIMK U10
U 1 1 5AE8E38A
P 3250 4850
AR Path="/5AF7D604/5AE8E38A" Ref="U10"  Part="1" 
AR Path="/5AFBDC9E/5AE8E38A" Ref="U13"  Part="1" 
F 0 "U10" H 2950 5100 50  0000 L CNN
F 1 "DAC081C081CIMK" H 3350 5100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3900 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac081c081.pdf" H 3250 4850 50  0001 C CNN
F 4 "Texas Instruments" H 0   0   50  0001 C CNN "Mfg"
F 5 "DAC081C081CIMK/NOPB" H 0   0   50  0001 C CNN "MPN"
	1    3250 4850
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADC081C021CIMM U9
U 1 1 5AE8E504
P 6100 3150
AR Path="/5AF7D604/5AE8E504" Ref="U9"  Part="1" 
AR Path="/5AFBDC9E/5AE8E504" Ref="U12"  Part="1" 
F 0 "U9" H 5850 3400 50  0000 C CNN
F 1 "ADC081C021CIMM" H 6500 3400 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 6900 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/adc081c021.pdf" H 6100 3250 50  0001 C CNN
F 4 "Texas Instruments" H 0   0   50  0001 C CNN "Mfg"
F 5 "ADC081C021CIMM/NOPB" H 0   0   50  0001 C CNN "MPN"
	1    6100 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4850 2800 4850
Text HLabel 6550 3050 2    50   Input ~ 0
SCL
Wire Wire Line
	6550 3050 6500 3050
Text HLabel 6550 3150 2    50   Input ~ 0
SDA
Wire Wire Line
	6500 3150 6550 3150
$Comp
L power:GND #PWR0125
U 1 1 5AEF8F23
P 6100 3500
AR Path="/5AF7D604/5AEF8F23" Ref="#PWR0125"  Part="1" 
AR Path="/5AFBDC9E/5AEF8F23" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0125" H 6100 3250 50  0001 C CNN
F 1 "GND" H 6105 3327 50  0000 C CNN
F 2 "" H 6100 3500 50  0001 C CNN
F 3 "" H 6100 3500 50  0001 C CNN
	1    6100 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5AEF8F3A
P 3250 5200
AR Path="/5AF7D604/5AEF8F3A" Ref="#PWR0126"  Part="1" 
AR Path="/5AFBDC9E/5AEF8F3A" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0126" H 3250 4950 50  0001 C CNN
F 1 "GND" H 3255 5027 50  0000 C CNN
F 2 "" H 3250 5200 50  0001 C CNN
F 3 "" H 3250 5200 50  0001 C CNN
	1    3250 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5150 3250 5200
Wire Wire Line
	6100 3450 6100 3500
$Comp
L power:+3.3V #PWR0127
U 1 1 5AEFD22D
P 3250 4500
AR Path="/5AF7D604/5AEFD22D" Ref="#PWR0127"  Part="1" 
AR Path="/5AFBDC9E/5AEFD22D" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0127" H 3250 4350 50  0001 C CNN
F 1 "+3.3V" H 3265 4673 50  0000 C CNN
F 2 "" H 3250 4500 50  0001 C CNN
F 3 "" H 3250 4500 50  0001 C CNN
	1    3250 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4500 3250 4550
$Comp
L power:+3.3V #PWR0128
U 1 1 5AEFE34F
P 6100 2800
AR Path="/5AF7D604/5AEFE34F" Ref="#PWR0128"  Part="1" 
AR Path="/5AFBDC9E/5AEFE34F" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0128" H 6100 2650 50  0001 C CNN
F 1 "+3.3V" H 6115 2973 50  0000 C CNN
F 2 "" H 6100 2800 50  0001 C CNN
F 3 "" H 6100 2800 50  0001 C CNN
	1    6100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6100 2850
Text HLabel 2800 4950 0    50   Input ~ 0
ADRDAC
Text HLabel 5650 3150 0    50   Input ~ 0
ADRADC
Wire Wire Line
	5650 3150 5700 3150
Text Notes 3350 5350 0    50   ~ 0
Addr (ADR=X): 0001100\nAddr (ADR=L): 0001101\nAddr (ADR=H): 0001110
Text Notes 6250 3650 0    50   ~ 0
Addr (ADR=X): 1010100\nAddr (ADR=L): 1010101\nAddr (ADR=H): 1010110
Text HLabel 6550 3250 2    50   Input ~ 0
~ALERT
Wire Wire Line
	6550 3250 6500 3250
$Comp
L power:GND #PWR0129
U 1 1 5B006AD5
P 5650 3250
AR Path="/5AF7D604/5B006AD5" Ref="#PWR0129"  Part="1" 
AR Path="/5AFBDC9E/5B006AD5" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0129" H 5650 3000 50  0001 C CNN
F 1 "GND" V 5650 3050 50  0000 C CNN
F 2 "" H 5650 3250 50  0001 C CNN
F 3 "" H 5650 3250 50  0001 C CNN
	1    5650 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 3250 5700 3250
$Comp
L Device:C C35
U 1 1 5B00CF39
P 4700 1500
AR Path="/5AF7D604/5B00CF39" Ref="C35"  Part="1" 
AR Path="/5AFBDC9E/5B00CF39" Ref="C42"  Part="1" 
F 0 "C35" H 4815 1546 50  0000 L CNN
F 1 "u1" H 4815 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4738 1350 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 4700 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H 0   0   50  0001 C CNN "MPN"
	1    4700 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C34
U 1 1 5B00CF41
P 4350 1500
AR Path="/5AF7D604/5B00CF41" Ref="C34"  Part="1" 
AR Path="/5AFBDC9E/5B00CF41" Ref="C41"  Part="1" 
F 0 "C34" H 4465 1546 50  0000 L CNN
F 1 "4u7" H 4465 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4388 1350 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_commercial_general_en-837201.pdf" H 4350 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "LMK107BJ475KAHT" H 0   0   50  0001 C CNN "MPN"
	1    4350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1300 4700 1350
Wire Wire Line
	4350 1650 4350 1700
Wire Wire Line
	4700 1700 4700 1650
$Comp
L power:GND #PWR0130
U 1 1 5B00CF4B
P 4500 1750
AR Path="/5AF7D604/5B00CF4B" Ref="#PWR0130"  Part="1" 
AR Path="/5AFBDC9E/5B00CF4B" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0130" H 4500 1500 50  0001 C CNN
F 1 "GND" H 4505 1577 50  0000 C CNN
F 2 "" H 4500 1750 50  0001 C CNN
F 3 "" H 4500 1750 50  0001 C CNN
	1    4500 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4500 1700
Wire Wire Line
	4500 1750 4500 1700
Connection ~ 4500 1700
Wire Wire Line
	4500 1700 4700 1700
Wire Wire Line
	4350 1350 4350 1300
Wire Wire Line
	4350 1300 4500 1300
$Comp
L power:+3.3V #PWR0131
U 1 1 5B00CF57
P 4500 1250
AR Path="/5AF7D604/5B00CF57" Ref="#PWR0131"  Part="1" 
AR Path="/5AFBDC9E/5B00CF57" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0131" H 4500 1100 50  0001 C CNN
F 1 "+3.3V" H 4515 1423 50  0000 C CNN
F 2 "" H 4500 1250 50  0001 C CNN
F 3 "" H 4500 1250 50  0001 C CNN
	1    4500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1250 4500 1300
Connection ~ 4500 1300
Wire Wire Line
	4500 1300 4700 1300
$Comp
L Device:C C36
U 1 1 5B013969
P 5050 1500
AR Path="/5AF7D604/5B013969" Ref="C36"  Part="1" 
AR Path="/5AFBDC9E/5B013969" Ref="C43"  Part="1" 
F 0 "C36" H 5165 1546 50  0000 L CNN
F 1 "u1" H 5165 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 5088 1350 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 5050 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H 0   0   50  0001 C CNN "MPN"
	1    5050 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1300 5050 1300
Wire Wire Line
	5050 1300 5050 1350
Connection ~ 4700 1300
Wire Wire Line
	4700 1700 5050 1700
Wire Wire Line
	5050 1700 5050 1650
Connection ~ 4700 1700
$Comp
L Device:C C37
U 1 1 5B01DA56
P 4700 3250
AR Path="/5AF7D604/5B01DA56" Ref="C37"  Part="1" 
AR Path="/5AFBDC9E/5B01DA56" Ref="C44"  Part="1" 
F 0 "C37" H 4815 3296 50  0000 L CNN
F 1 "12n" H 4815 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4738 3100 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/447/UPY-GPHC_X7R_6.3V-to-50V_18-1154002.pdf" H 4700 3250 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Mfg"
F 5 "CC0603KRX7R8BB123" H 0   0   50  0001 C CNN "MPN"
	1    4700 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5B01DB1A
P 4350 2850
AR Path="/5AF7D604/5B01DB1A" Ref="R20"  Part="1" 
AR Path="/5AFBDC9E/5B01DB1A" Ref="R25"  Part="1" 
F 0 "R20" H 4280 2804 50  0000 R CNN
F 1 "10k" H 4280 2895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4280 2850 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/447/PYu-RC_Group_51_RoHS_L_9-1314892.pdf" H 4350 2850 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Mfg"
F 5 "RC0603FR-1010KL" H 0   0   50  0001 C CNN "MPN"
	1    4350 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 3100 4700 3050
Connection ~ 4700 3050
$Comp
L power:GND #PWR0132
U 1 1 5B0257C2
P 4700 3450
AR Path="/5AF7D604/5B0257C2" Ref="#PWR0132"  Part="1" 
AR Path="/5AFBDC9E/5B0257C2" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0132" H 4700 3200 50  0001 C CNN
F 1 "GND" H 4705 3277 50  0000 C CNN
F 2 "" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3400 4700 3450
Wire Wire Line
	4350 2650 4350 2700
Wire Wire Line
	4350 3000 4350 3050
$Comp
L power:GND #PWR0133
U 1 1 5B033EA4
P 4350 3450
AR Path="/5AF7D604/5B033EA4" Ref="#PWR0133"  Part="1" 
AR Path="/5AFBDC9E/5B033EA4" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0133" H 4350 3200 50  0001 C CNN
F 1 "GND" H 4355 3277 50  0000 C CNN
F 2 "" H 4350 3450 50  0001 C CNN
F 3 "" H 4350 3450 50  0001 C CNN
	1    4350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3400 4350 3450
Wire Wire Line
	4350 3050 4700 3050
Connection ~ 4350 3050
Wire Wire Line
	4350 3050 4350 3100
Wire Wire Line
	4700 3050 5700 3050
$Comp
L Regulator_Linear:TPS73101DBV U11
U 1 1 5B047DC9
P 5500 4850
AR Path="/5AF7D604/5B047DC9" Ref="U11"  Part="1" 
AR Path="/5AFBDC9E/5B047DC9" Ref="U14"  Part="1" 
F 0 "U11" H 5250 5100 50  0000 C CNN
F 1 "TPS73101DBV" H 5600 5100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5500 5175 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tps731.pdf" H 5500 4800 50  0001 C CNN
F 4 "Texas Instruments" H 0   0   50  0001 C CNN "Mfg"
F 5 "TPS73101DBVR" H 0   0   50  0001 C CNN "MPN"
	1    5500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4400 5950 4400
Wire Wire Line
	5950 4750 5900 4750
$Comp
L power:GND #PWR0134
U 1 1 5B051FBC
P 5500 5200
AR Path="/5AF7D604/5B051FBC" Ref="#PWR0134"  Part="1" 
AR Path="/5AFBDC9E/5B051FBC" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0134" H 5500 4950 50  0001 C CNN
F 1 "GND" H 5505 5027 50  0000 C CNN
F 2 "" H 5500 5200 50  0001 C CNN
F 3 "" H 5500 5200 50  0001 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5150 5500 5200
Wire Wire Line
	5100 4850 5050 4850
$Comp
L power:+5V #PWR0135
U 1 1 5B0564CD
P 4600 4700
AR Path="/5AF7D604/5B0564CD" Ref="#PWR0135"  Part="1" 
AR Path="/5AFBDC9E/5B0564CD" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0135" H 4600 4550 50  0001 C CNN
F 1 "+5V" H 4615 4873 50  0000 C CNN
F 2 "" H 4600 4700 50  0001 C CNN
F 3 "" H 4600 4700 50  0001 C CNN
	1    4600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4700 4600 4750
Wire Wire Line
	4600 4750 5100 4750
$Comp
L Device:C C40
U 1 1 5B058AAD
P 3650 1500
AR Path="/5AF7D604/5B058AAD" Ref="C40"  Part="1" 
AR Path="/5AFBDC9E/5B058AAD" Ref="C47"  Part="1" 
F 0 "C40" H 3765 1546 50  0000 L CNN
F 1 "u1" H 3765 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3688 1350 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 3650 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H 0   0   50  0001 C CNN "MPN"
	1    3650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 5B058AB5
P 3300 1500
AR Path="/5AF7D604/5B058AB5" Ref="C39"  Part="1" 
AR Path="/5AFBDC9E/5B058AB5" Ref="C46"  Part="1" 
F 0 "C39" H 3415 1546 50  0000 L CNN
F 1 "4u7" H 3415 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 3338 1350 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/400/lcc_commercial_general_en-837201.pdf" H 3300 1500 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "LMK107BJ475KAHT" H 0   0   50  0001 C CNN "MPN"
	1    3300 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1650 3300 1700
Wire Wire Line
	3650 1700 3650 1650
$Comp
L power:GND #PWR0136
U 1 1 5B058ABF
P 3450 1750
AR Path="/5AF7D604/5B058ABF" Ref="#PWR0136"  Part="1" 
AR Path="/5AFBDC9E/5B058ABF" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0136" H 3450 1500 50  0001 C CNN
F 1 "GND" H 3455 1577 50  0000 C CNN
F 2 "" H 3450 1750 50  0001 C CNN
F 3 "" H 3450 1750 50  0001 C CNN
	1    3450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1700 3450 1700
Wire Wire Line
	3450 1750 3450 1700
Connection ~ 3450 1700
Wire Wire Line
	3450 1700 3650 1700
Wire Wire Line
	3300 1350 3300 1300
Wire Wire Line
	3650 1300 3650 1350
Wire Wire Line
	3300 1300 3450 1300
Wire Wire Line
	4600 4750 4600 4800
Connection ~ 4600 4750
$Comp
L power:GND #PWR0137
U 1 1 5B06F817
P 4600 5150
AR Path="/5AF7D604/5B06F817" Ref="#PWR0137"  Part="1" 
AR Path="/5AFBDC9E/5B06F817" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0137" H 4600 4900 50  0001 C CNN
F 1 "GND" H 4605 4977 50  0000 C CNN
F 2 "" H 4600 5150 50  0001 C CNN
F 3 "" H 4600 5150 50  0001 C CNN
	1    4600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5100 4600 5150
$Comp
L Device:R R23
U 1 1 5B072576
P 6150 4950
AR Path="/5AF7D604/5B072576" Ref="R23"  Part="1" 
AR Path="/5AFBDC9E/5B072576" Ref="R28"  Part="1" 
F 0 "R23" H 6080 4904 50  0000 R CNN
F 1 "59k" H 6080 4995 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6080 4950 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/447/PYu-AC_51_RoHS_L_6-1152827.pdf" H 6150 4950 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Mfg"
F 5 "RC0603FR-0759KL" H 0   0   50  0001 C CNN "MPN"
	1    6150 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 4750 6150 4750
Connection ~ 5950 4750
Wire Wire Line
	6150 4750 6150 4800
$Comp
L Device:R R24
U 1 1 5B07B07B
P 6150 5350
AR Path="/5AF7D604/5B07B07B" Ref="R24"  Part="1" 
AR Path="/5AFBDC9E/5B07B07B" Ref="R29"  Part="1" 
F 0 "R24" H 6080 5304 50  0000 R CNN
F 1 "24k3" H 6080 5395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 6080 5350 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/447/PYu-AC_51_RoHS_L_6-1152827.pdf" H 6150 5350 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Mfg"
F 5 "AC0603FR-0724K3L" H 0   0   50  0001 C CNN "MPN"
	1    6150 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 5100 6150 5150
Wire Wire Line
	5900 4850 5950 4850
Wire Wire Line
	5950 4850 5950 5150
Wire Wire Line
	5950 5150 6150 5150
Connection ~ 6150 5150
Wire Wire Line
	6150 5150 6150 5200
$Comp
L Device:R R22
U 1 1 5B083B9F
P 4150 4850
AR Path="/5AF7D604/5B083B9F" Ref="R22"  Part="1" 
AR Path="/5AFBDC9E/5B083B9F" Ref="R27"  Part="1" 
F 0 "R22" V 4250 4850 50  0000 C CNN
F 1 "49k9" V 4150 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4080 4850 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/447/PYu-AC_51_RoHS_L_6-1152827.pdf" H 4150 4850 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Mfg"
F 5 "RC0603FR-0749K9L" H 0   0   50  0001 C CNN "MPN"
	1    4150 4850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 5450 5950 5450
Wire Wire Line
	5950 5450 5950 5150
Connection ~ 5950 5150
$Comp
L power:GND #PWR0138
U 1 1 5B08D632
P 6150 5550
AR Path="/5AF7D604/5B08D632" Ref="#PWR0138"  Part="1" 
AR Path="/5AFBDC9E/5B08D632" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0138" H 6150 5300 50  0001 C CNN
F 1 "GND" H 6155 5377 50  0000 C CNN
F 2 "" H 6150 5550 50  0001 C CNN
F 3 "" H 6150 5550 50  0001 C CNN
	1    6150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5500 6150 5550
$Comp
L Device:R R21
U 1 1 5B098496
P 4350 3250
AR Path="/5AF7D604/5B098496" Ref="R21"  Part="1" 
AR Path="/5AFBDC9E/5B098496" Ref="R26"  Part="1" 
F 0 "R21" H 4280 3204 50  0000 R CNN
F 1 "10k" H 4280 3295 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.99x1.00mm_HandSolder" V 4280 3250 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/447/PYu-RC_Group_51_RoHS_L_9-1314892.pdf" H 4350 3250 50  0001 C CNN
F 4 "Yageo" H 0   0   50  0001 C CNN "Mfg"
F 5 "RC0603FR-1010KL" H 0   0   50  0001 C CNN "MPN"
	1    4350 3250
	-1   0    0    1   
$EndComp
Text Notes 4250 4300 0    50   ~ 0
Csamp = 20 pF\nBits = 8\nCext = (2**(Bits+1)-1)*Csamp = 10.2 nF (min)\nGamma = ln(2**(Bits+1)) = 6.24\nFreq = 1 ksps\nRsource = 1/(Gamma*Cext*Freq) = 15.7 kohm (max)\nRdiv = 2*Rsource = 31.4 kohm (max)
Wire Wire Line
	5950 4400 5950 4750
Wire Wire Line
	4400 4850 4400 5450
Wire Wire Line
	4300 4850 4400 4850
Wire Wire Line
	3650 4850 4000 4850
$Comp
L Device:C C38
U 1 1 5AD9C9D7
P 4600 4950
AR Path="/5AF7D604/5AD9C9D7" Ref="C38"  Part="1" 
AR Path="/5AFBDC9E/5AD9C9D7" Ref="C45"  Part="1" 
F 0 "C38" H 4715 4996 50  0000 L CNN
F 1 "u1" H 4715 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad0.99x1.00mm_HandSolder" H 4638 4800 50  0001 C CNN
F 3 "https://www.mouser.hk/datasheet/2/396/mlcc02_e-1307760.pdf" H 4600 4950 50  0001 C CNN
F 4 "Taiyo Yuden" H 0   0   50  0001 C CNN "Mfg"
F 5 "TMK107BJ154KA-T" H 0   0   50  0001 C CNN "MPN"
	1    4600 4950
	1    0    0    -1  
$EndComp
Text HLabel 5050 4850 0    50   Input ~ 0
EN
Text Notes 2850 4250 0    50   ~ 0
Imax @ 3V3 = 0.16 mA
Text Notes 5750 2550 0    50   ~ 0
Imax @ 3V3 = 0.73 mA
Text Notes 5050 4550 0    50   ~ 0
Imax @ 5V = 150 mA
Text Notes 1950 2250 0    50   ~ 0
Imax @ 3V3 = 35 mA\nImax @ Vtg = 35 mA
Wire Wire Line
	3450 2650 4350 2650
Wire Wire Line
	4200 2750 4200 4400
Wire Wire Line
	4000 2750 4200 2750
Text Label 4300 4400 0    50   ~ 0
VIO
Wire Wire Line
	3450 1300 3450 1200
Wire Wire Line
	3450 1200 3100 1200
Wire Wire Line
	3100 1200 3100 2500
Connection ~ 3450 1300
Wire Wire Line
	3450 1300 3650 1300
Connection ~ 3100 2500
Text Label 4700 3050 0    50   ~ 0
VSAMP
Text Label 4850 5450 0    50   ~ 0
VFB
Wire Wire Line
	4200 2500 4200 2750
Wire Wire Line
	3100 2500 4200 2500
Connection ~ 4200 2750
$Comp
L Device:R_Pack08 RN1
U 1 1 5B157693
P 3150 3250
AR Path="/5AF7D604/5B157693" Ref="RN1"  Part="1" 
AR Path="/5AFBDC9E/5B157693" Ref="RN2"  Part="1" 
F 0 "RN1" V 2550 3250 50  0000 C CNN
F 1 "100" V 2650 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_8x0602" V 3625 3250 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/315/AOC0000C14-1108062.pdf" H 3150 3250 50  0001 C CNN
F 4 "Panasonic" V 2725 3350 50  0001 C CNN "Mfg"
F 5 "EXB-2HV101JV" V 3550 3250 50  0000 C CNN "MPN"
	1    3150 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2850 3500 2850
Wire Wire Line
	3350 3450 3500 3450
Wire Wire Line
	3350 3350 3500 3350
Wire Wire Line
	3350 3250 3500 3250
Wire Wire Line
	3350 3150 3500 3150
Wire Wire Line
	3350 3050 3500 3050
Wire Wire Line
	3350 2950 3500 2950
Wire Wire Line
	3350 3550 3500 3550
Text Label 3400 2850 0    50   ~ 0
Z0
Text Label 3400 2950 0    50   ~ 0
Z1
Text Label 3400 3050 0    50   ~ 0
Z2
Text Label 3400 3150 0    50   ~ 0
Z3
Text Label 3400 3250 0    50   ~ 0
Z4
Text Label 3400 3350 0    50   ~ 0
Z5
Text Label 3400 3450 0    50   ~ 0
Z6
Text Label 3400 3550 0    50   ~ 0
Z7
Wire Wire Line
	2800 4750 2850 4750
Wire Wire Line
	2800 4950 2850 4950
$Comp
L Device:R_Pack08 RN3
U 1 1 5B323A32
P 1650 3250
AR Path="/5AF7D604/5B323A32" Ref="RN3"  Part="1" 
AR Path="/5AFBDC9E/5B323A32" Ref="RN4"  Part="1" 
F 0 "RN3" V 1050 3250 50  0000 C CNN
F 1 "39" V 1150 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_8x0602" V 2125 3250 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/315/AOC0000C14-1108062.pdf" H 1650 3250 50  0001 C CNN
F 4 "Panasonic" H -1500 0   50  0001 C CNN "Mfg"
F 5 "EXB2HV390JV" V 2050 3250 50  0000 C CNN "MPN"
	1    1650 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 2850 2000 2850
Wire Wire Line
	1850 2950 2000 2950
Wire Wire Line
	1850 3050 2000 3050
Wire Wire Line
	1850 3150 2000 3150
Wire Wire Line
	1850 3250 2000 3250
Wire Wire Line
	1850 3350 2000 3350
Wire Wire Line
	1850 3450 2000 3450
Wire Wire Line
	1850 3550 2000 3550
Text Label 1900 2850 0    50   ~ 0
X0
Text Label 1900 2950 0    50   ~ 0
X1
Text Label 1900 3050 0    50   ~ 0
X2
Text Label 1900 3150 0    50   ~ 0
X3
Text Label 1900 3250 0    50   ~ 0
X4
Text Label 1900 3350 0    50   ~ 0
X5
Text Label 1900 3450 0    50   ~ 0
X6
Text Label 1900 3550 0    50   ~ 0
X7
$EndSCHEMATC
