EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ReleaseBoard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_01X02 J6
U 1 1 5AA18D46
P 8450 2050
F 0 "J6" H 8450 2200 50  0000 C CNN
F 1 "CONN_01X02" V 8550 2050 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.50mmDrill" H 8450 2050 50  0001 C CNN
F 3 "" H 8450 2050 50  0001 C CNN
	1    8450 2050
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q1
U 1 1 5AA18ECD
P 8150 2550
F 0 "Q1" H 8350 2600 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 8350 2500 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 8350 2650 50  0001 C CNN
F 3 "" H 8150 2550 50  0001 C CNN
	1    8150 2550
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5AA1901A
P 8000 2075
F 0 "D2" H 8000 2175 50  0000 C CNN
F 1 "D" H 8000 1975 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-41_SOD81_P7.62mm_Horizontal" H 8000 2075 50  0001 C CNN
F 3 "" H 8000 2075 50  0001 C CNN
	1    8000 2075
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 J7
U 1 1 5AA195C1
P 9400 2925
F 0 "J7" H 9400 3075 50  0000 C CNN
F 1 "CONN_01X02" V 9500 2925 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.50mmDrill" H 9400 2925 50  0001 C CNN
F 3 "" H 9400 2925 50  0001 C CNN
	1    9400 2925
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_GDS Q2
U 1 1 5AA195C7
P 9100 3425
F 0 "Q2" H 9300 3475 50  0000 L CNN
F 1 "Q_NMOS_GDS" H 9300 3375 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 9300 3525 50  0001 C CNN
F 3 "" H 9100 3425 50  0001 C CNN
	1    9100 3425
	1    0    0    -1  
$EndComp
$Comp
L D D3
U 1 1 5AA195CD
P 8950 2950
F 0 "D3" H 8950 3050 50  0000 C CNN
F 1 "D" H 8950 2850 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-41_SOD81_P7.62mm_Horizontal" H 8950 2950 50  0001 C CNN
F 3 "" H 8950 2950 50  0001 C CNN
	1    8950 2950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5AA195DB
P 9200 3625
F 0 "#PWR01" H 9200 3375 50  0001 C CNN
F 1 "GND" H 9200 3475 50  0000 C CNN
F 2 "" H 9200 3625 50  0001 C CNN
F 3 "" H 9200 3625 50  0001 C CNN
	1    9200 3625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AA19603
P 8250 2750
F 0 "#PWR02" H 8250 2500 50  0001 C CNN
F 1 "GND" H 8250 2600 50  0000 C CNN
F 2 "" H 8250 2750 50  0001 C CNN
F 3 "" H 8250 2750 50  0001 C CNN
	1    8250 2750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR03
U 1 1 5AA19659
P 9175 2650
F 0 "#PWR03" H 9175 2500 50  0001 C CNN
F 1 "+12V" H 9175 2790 50  0000 C CNN
F 2 "" H 9175 2650 50  0001 C CNN
F 3 "" H 9175 2650 50  0001 C CNN
	1    9175 2650
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 5AA19679
P 8200 1800
F 0 "#PWR04" H 8200 1650 50  0001 C CNN
F 1 "+12V" H 8200 1940 50  0000 C CNN
F 2 "" H 8200 1800 50  0001 C CNN
F 3 "" H 8200 1800 50  0001 C CNN
	1    8200 1800
	1    0    0    -1  
$EndComp
$Comp
L ATTINY85-20PU U4
U 1 1 5AA197C8
P 4475 3125
F 0 "U4" H 3325 3525 50  0000 C CNN
F 1 "ATTINY85-20PU" H 5475 2725 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 5475 3125 50  0001 C CIN
F 3 "" H 4475 3125 50  0001 C CNN
	1    4475 3125
	-1   0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 5AA19952
P 8850 3575
F 0 "R18" V 8930 3575 50  0000 C CNN
F 1 "R" V 8850 3575 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8780 3575 50  0001 C CNN
F 3 "" H 8850 3575 50  0001 C CNN
	1    8850 3575
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 5AA19A01
P 7875 2700
F 0 "R16" V 7955 2700 50  0000 C CNN
F 1 "R" V 7875 2700 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7805 2700 50  0001 C CNN
F 3 "" H 7875 2700 50  0001 C CNN
	1    7875 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5AA19AA6
P 7875 2850
F 0 "#PWR05" H 7875 2600 50  0001 C CNN
F 1 "GND" H 7875 2700 50  0000 C CNN
F 2 "" H 7875 2850 50  0001 C CNN
F 3 "" H 7875 2850 50  0001 C CNN
	1    7875 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AA19ACC
P 8850 3725
F 0 "#PWR06" H 8850 3475 50  0001 C CNN
F 1 "GND" H 8850 3575 50  0000 C CNN
F 2 "" H 8850 3725 50  0001 C CNN
F 3 "" H 8850 3725 50  0001 C CNN
	1    8850 3725
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 5AA19B16
P 8600 3425
F 0 "R17" V 8680 3425 50  0000 C CNN
F 1 "R" V 8600 3425 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8530 3425 50  0001 C CNN
F 3 "" H 8600 3425 50  0001 C CNN
	1    8600 3425
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5AA19BEB
P 7625 2550
F 0 "R15" V 7705 2550 50  0000 C CNN
F 1 "R" V 7625 2550 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7555 2550 50  0001 C CNN
F 3 "" H 7625 2550 50  0001 C CNN
	1    7625 2550
	0    1    1    0   
$EndComp
$Comp
L CONN_02X03 J3
U 1 1 5AA19D0B
P 6175 3925
F 0 "J3" H 6175 4125 50  0000 C CNN
F 1 "CONN_02X03" H 6175 3725 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 6175 2725 50  0001 C CNN
F 3 "" H 6175 2725 50  0001 C CNN
	1    6175 3925
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 1 1 5AA1A504
P 2950 5200
F 0 "U2" H 2950 5400 50  0000 L CNN
F 1 "LM324" H 2950 5000 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 2900 5300 50  0001 C CNN
F 3 "" H 3000 5400 50  0001 C CNN
	1    2950 5200
	1    0    0    -1  
$EndComp
$Comp
L LM324 U2
U 2 1 5AA1A59F
P 4000 5300
F 0 "U2" H 4000 5500 50  0000 L CNN
F 1 "LM324" H 4000 5100 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 3950 5400 50  0001 C CNN
F 3 "" H 4050 5500 50  0001 C CNN
	2    4000 5300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5AA1A9B0
P 2325 4700
F 0 "R1" V 2405 4700 50  0000 C CNN
F 1 "1M" V 2325 4700 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2255 4700 50  0001 C CNN
F 3 "" H 2325 4700 50  0001 C CNN
	1    2325 4700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AA1AA61
P 2325 5725
F 0 "R2" V 2405 5725 50  0000 C CNN
F 1 "1M" V 2325 5725 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2255 5725 50  0001 C CNN
F 3 "" H 2325 5725 50  0001 C CNN
	1    2325 5725
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AA1AB38
P 2500 5825
F 0 "R3" V 2580 5825 50  0000 C CNN
F 1 "12k" V 2500 5825 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2430 5825 50  0001 C CNN
F 3 "" H 2500 5825 50  0001 C CNN
	1    2500 5825
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5AA1ABBF
P 3250 5625
F 0 "R4" V 3330 5625 50  0000 C CNN
F 1 "1M" V 3250 5625 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3180 5625 50  0001 C CNN
F 3 "" H 3250 5625 50  0001 C CNN
	1    3250 5625
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5AA1AD12
P 3600 5825
F 0 "R5" V 3680 5825 50  0000 C CNN
F 1 "12k" V 3600 5825 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3530 5825 50  0001 C CNN
F 3 "" H 3600 5825 50  0001 C CNN
	1    3600 5825
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5AA1ADAB
P 4205 5660
F 0 "R6" V 4285 5660 50  0000 C CNN
F 1 "1M" V 4205 5660 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4135 5660 50  0001 C CNN
F 3 "" H 4205 5660 50  0001 C CNN
	1    4205 5660
	0    1    1    0   
$EndComp
$Comp
L D D1
U 1 1 5AA1AEB3
P 4650 5300
F 0 "D1" H 4650 5400 50  0000 C CNN
F 1 "1N4841" H 4650 5200 50  0000 C CNN
F 2 "Diodes_ThroughHole:D_DO-35_SOD27_P7.62mm_Horizontal" H 4650 5300 50  0001 C CNN
F 3 "" H 4650 5300 50  0001 C CNN
	1    4650 5300
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 5AA1AFC6
P 4875 5875
F 0 "R7" V 4955 5875 50  0000 C CNN
F 1 "10k" V 4875 5875 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4805 5875 50  0001 C CNN
F 3 "" H 4875 5875 50  0001 C CNN
	1    4875 5875
	-1   0    0    1   
$EndComp
$Comp
L R R10
U 1 1 5AA1B20F
P 5325 4795
F 0 "R10" V 5405 4795 50  0000 C CNN
F 1 "390k" V 5325 4795 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5255 4795 50  0001 C CNN
F 3 "" H 5325 4795 50  0001 C CNN
	1    5325 4795
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5AA1B300
P 5325 5825
F 0 "R9" V 5405 5825 50  0000 C CNN
F 1 "1M" V 5325 5825 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5255 5825 50  0001 C CNN
F 3 "" H 5325 5825 50  0001 C CNN
	1    5325 5825
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5AA1B6CC
P 5080 5875
F 0 "C9" H 5105 5975 50  0000 L CNN
F 1 "10n" H 5105 5775 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5118 5725 50  0001 C CNN
F 3 "" H 5080 5875 50  0001 C CNN
	1    5080 5875
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5AA1BC8A
P 3600 6125
F 0 "C6" H 3625 6225 50  0000 L CNN
F 1 "10n" H 3625 6025 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3638 5975 50  0001 C CNN
F 3 "" H 3600 6125 50  0001 C CNN
	1    3600 6125
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5AA1BF73
P 2500 6125
F 0 "C2" H 2525 6225 50  0000 L CNN
F 1 "10n" H 2525 6025 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2538 5975 50  0001 C CNN
F 3 "" H 2500 6125 50  0001 C CNN
	1    2500 6125
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J2
U 1 1 5AA1C5D3
P 1825 5150
F 0 "J2" H 1825 5300 50  0000 C CNN
F 1 "CONN_01X02" V 1925 5150 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 1825 5150 50  0001 C CNN
F 3 "" H 1825 5150 50  0001 C CNN
	1    1825 5150
	-1   0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 5AA1C9A7
P 6350 5725
F 0 "R12" V 6430 5725 50  0000 C CNN
F 1 "8k" V 6350 5725 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6280 5725 50  0001 C CNN
F 3 "" H 6350 5725 50  0001 C CNN
	1    6350 5725
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 5AA1CA86
P 6350 6075
F 0 "R13" V 6430 6075 50  0000 C CNN
F 1 "10k" V 6350 6075 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6280 6075 50  0001 C CNN
F 3 "" H 6350 6075 50  0001 C CNN
	1    6350 6075
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5AA1CE02
P 3125 3375
F 0 "#PWR07" H 3125 3125 50  0001 C CNN
F 1 "GND" H 3125 3225 50  0000 C CNN
F 2 "" H 3125 3375 50  0001 C CNN
F 3 "" H 3125 3375 50  0001 C CNN
	1    3125 3375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5AA1FDF0
P 3900 6275
F 0 "#PWR08" H 3900 6025 50  0001 C CNN
F 1 "GND" H 3900 6125 50  0000 C CNN
F 2 "" H 3900 6275 50  0001 C CNN
F 3 "" H 3900 6275 50  0001 C CNN
	1    3900 6275
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 5AA1FE46
P 1775 3000
F 0 "J1" H 1775 3150 50  0000 C CNN
F 1 "CONN_01X02" V 1875 3000 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_2.00mmDrill" H 1775 3000 50  0001 C CNN
F 3 "" H 1775 3000 50  0001 C CNN
	1    1775 3000
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AA20A6E
P 8600 4925
F 0 "#PWR09" H 8600 4675 50  0001 C CNN
F 1 "GND" H 8600 4775 50  0000 C CNN
F 2 "" H 8600 4925 50  0001 C CNN
F 3 "" H 8600 4925 50  0001 C CNN
	1    8600 4925
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5AA3B883
P 9075 4800
F 0 "C7" H 9100 4900 50  0000 L CNN
F 1 "C" H 9100 4700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 9113 4650 50  0001 C CNN
F 3 "" H 9075 4800 50  0001 C CNN
	1    9075 4800
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5AA3B93E
P 8075 4800
F 0 "C5" H 8100 4900 50  0000 L CNN
F 1 "C" H 8100 4700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 8113 4650 50  0001 C CNN
F 3 "" H 8075 4800 50  0001 C CNN
	1    8075 4800
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5AA3B9F7
P 9275 4800
F 0 "C8" H 9300 4900 50  0000 L CNN
F 1 "C" H 9300 4700 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 9313 4650 50  0001 C CNN
F 3 "" H 9275 4800 50  0001 C CNN
	1    9275 4800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 5AA3BB00
P 9275 4600
F 0 "#PWR010" H 9275 4450 50  0001 C CNN
F 1 "+5V" H 9275 4740 50  0000 C CNN
F 2 "" H 9275 4600 50  0001 C CNN
F 3 "" H 9275 4600 50  0001 C CNN
	1    9275 4600
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR011
U 1 1 5AA3BB60
P 8075 4600
F 0 "#PWR011" H 8075 4450 50  0001 C CNN
F 1 "+12V" H 8075 4740 50  0000 C CNN
F 2 "" H 8075 4600 50  0001 C CNN
F 3 "" H 8075 4600 50  0001 C CNN
	1    8075 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5AA3C5DC
P 9275 4950
F 0 "#PWR012" H 9275 4700 50  0001 C CNN
F 1 "GND" H 9275 4800 50  0000 C CNN
F 2 "" H 9275 4950 50  0001 C CNN
F 3 "" H 9275 4950 50  0001 C CNN
	1    9275 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5AA3C63C
P 9075 4950
F 0 "#PWR013" H 9075 4700 50  0001 C CNN
F 1 "GND" H 9075 4800 50  0000 C CNN
F 2 "" H 9075 4950 50  0001 C CNN
F 3 "" H 9075 4950 50  0001 C CNN
	1    9075 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5AA3C69C
P 8075 4950
F 0 "#PWR014" H 8075 4700 50  0001 C CNN
F 1 "GND" H 8075 4800 50  0000 C CNN
F 2 "" H 8075 4950 50  0001 C CNN
F 3 "" H 8075 4950 50  0001 C CNN
	1    8075 4950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5AA3CAA8
P 1600 4200
F 0 "C1" H 1625 4300 50  0000 L CNN
F 1 "C" H 1625 4100 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1638 4050 50  0001 C CNN
F 3 "" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AA3CB43
P 2550 4225
F 0 "C3" H 2575 4325 50  0000 L CNN
F 1 "C" H 2575 4125 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 2588 4075 50  0001 C CNN
F 3 "" H 2550 4225 50  0001 C CNN
	1    2550 4225
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5AA3CC26
P 2750 4225
F 0 "C4" H 2775 4325 50  0000 L CNN
F 1 "C" H 2775 4125 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2788 4075 50  0001 C CNN
F 3 "" H 2750 4225 50  0001 C CNN
	1    2750 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2650 9200 2650
Wire Wire Line
	8950 2650 8950 2800
Wire Wire Line
	9200 2650 9200 2875
Connection ~ 9175 2650
Wire Wire Line
	9200 2975 9200 3225
Wire Wire Line
	8950 3100 9200 3100
Connection ~ 9200 3100
Wire Wire Line
	8250 2100 8250 2350
Wire Wire Line
	8000 2225 8250 2225
Connection ~ 8250 2225
Wire Wire Line
	8250 1800 8250 2000
Wire Wire Line
	8000 1800 8250 1800
Connection ~ 8200 1800
Wire Wire Line
	8000 1800 8000 1925
Wire Wire Line
	5325 4945 5325 5675
Wire Wire Line
	5325 5100 5375 5100
Wire Wire Line
	2325 4550 5575 4550
Wire Wire Line
	5575 4550 5575 4900
Wire Wire Line
	5575 6275 5575 5500
Wire Wire Line
	2025 6275 6350 6275
Wire Wire Line
	5325 5975 5325 6275
Wire Wire Line
	3700 5400 3600 5400
Connection ~ 5325 6275
Wire Wire Line
	3600 5400 3600 5675
Wire Wire Line
	3100 5625 2500 5625
Wire Wire Line
	2500 5300 2500 5675
Connection ~ 2500 5625
Wire Wire Line
	3400 5200 3400 5625
Wire Wire Line
	2500 5300 2650 5300
Wire Wire Line
	3250 5200 3700 5200
Connection ~ 3400 5200
Wire Wire Line
	2850 4050 2850 4900
Connection ~ 2850 4550
Wire Wire Line
	3900 5000 3900 4550
Connection ~ 3900 4550
Wire Wire Line
	3900 5600 3900 6275
Connection ~ 3900 6275
Wire Wire Line
	2850 5500 2850 6275
Connection ~ 2850 6275
Wire Wire Line
	2325 4850 2325 5575
Wire Wire Line
	2025 5100 2650 5100
Connection ~ 2325 5100
Wire Wire Line
	2025 5200 2025 6275
Connection ~ 2500 6275
Wire Wire Line
	2325 5875 2325 6275
Connection ~ 2325 6275
Wire Wire Line
	5975 5200 6350 5200
Wire Wire Line
	6350 5200 6350 5575
Wire Wire Line
	6350 6275 6350 6225
Connection ~ 5575 6275
Wire Wire Line
	7150 5900 6350 5900
Wire Wire Line
	6350 5875 6350 5925
Connection ~ 6350 5900
Wire Wire Line
	8750 3425 8900 3425
Connection ~ 8850 3425
Wire Wire Line
	7775 2550 7950 2550
Connection ~ 7875 2550
Wire Wire Line
	9275 4600 9275 4650
Wire Wire Line
	9075 4625 9075 4650
Wire Wire Line
	9000 4625 9275 4625
Connection ~ 9275 4625
Connection ~ 9075 4625
Wire Wire Line
	8200 4625 8075 4625
Wire Wire Line
	8075 4600 8075 4650
Connection ~ 8075 4625
Wire Wire Line
	2475 4050 2850 4050
Wire Wire Line
	2550 4075 2550 4050
Connection ~ 2550 4050
Wire Wire Line
	2750 4075 2750 4050
Connection ~ 2750 4050
Wire Wire Line
	1550 4050 1675 4050
$Comp
L +12V #PWR015
U 1 1 5AA3CF9F
P 1550 4025
F 0 "#PWR015" H 1550 3875 50  0001 C CNN
F 1 "+12V" H 1550 4165 50  0000 C CNN
F 2 "" H 1550 4025 50  0001 C CNN
F 3 "" H 1550 4025 50  0001 C CNN
	1    1550 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4025 1550 4050
Connection ~ 1600 4050
Wire Wire Line
	2075 4375 2750 4375
Wire Wire Line
	1600 4350 2075 4350
Wire Wire Line
	2075 4350 2075 4375
Connection ~ 2550 4375
Connection ~ 2075 4350
$Comp
L GND #PWR016
U 1 1 5AA3D457
P 2075 4375
F 0 "#PWR016" H 2075 4125 50  0001 C CNN
F 1 "GND" H 2075 4225 50  0000 C CNN
F 2 "" H 2075 4375 50  0001 C CNN
F 3 "" H 2075 4375 50  0001 C CNN
	1    2075 4375
	1    0    0    -1  
$EndComp
Connection ~ 2075 4375
$Comp
L GND #PWR017
U 1 1 5AA3D9FB
P 1975 3050
F 0 "#PWR017" H 1975 2800 50  0001 C CNN
F 1 "GND" H 1975 2900 50  0000 C CNN
F 2 "" H 1975 3050 50  0001 C CNN
F 3 "" H 1975 3050 50  0001 C CNN
	1    1975 3050
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR018
U 1 1 5AA3DA63
P 1975 2540
F 0 "#PWR018" H 1975 2390 50  0001 C CNN
F 1 "+12V" H 1975 2680 50  0000 C CNN
F 2 "" H 1975 2540 50  0001 C CNN
F 3 "" H 1975 2540 50  0001 C CNN
	1    1975 2540
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR019
U 1 1 5AA3DC45
P 3125 2875
F 0 "#PWR019" H 3125 2725 50  0001 C CNN
F 1 "+5V" H 3125 3015 50  0000 C CNN
F 2 "" H 3125 2875 50  0001 C CNN
F 3 "" H 3125 2875 50  0001 C CNN
	1    3125 2875
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J5
U 1 1 5AA3DE51
P 6925 3550
F 0 "J5" H 6925 3700 50  0000 C CNN
F 1 "CONN_01X02" V 7025 3550 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 6925 3550 50  0001 C CNN
F 3 "" H 6925 3550 50  0001 C CNN
	1    6925 3550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR020
U 1 1 5AA3E155
P 6725 3500
F 0 "#PWR020" H 6725 3350 50  0001 C CNN
F 1 "+5V" H 6725 3640 50  0000 C CNN
F 2 "" H 6725 3500 50  0001 C CNN
F 3 "" H 6725 3500 50  0001 C CNN
	1    6725 3500
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5AA3E1BF
P 6725 3825
F 0 "R14" V 6805 3825 50  0000 C CNN
F 1 "R" V 6725 3825 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6655 3825 50  0001 C CNN
F 3 "" H 6725 3825 50  0001 C CNN
	1    6725 3825
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 5AA3E272
P 6725 3975
F 0 "#PWR021" H 6725 3725 50  0001 C CNN
F 1 "GND" H 6725 3825 50  0000 C CNN
F 2 "" H 6725 3975 50  0001 C CNN
F 3 "" H 6725 3975 50  0001 C CNN
	1    6725 3975
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X04 J4
U 1 1 5AA3EB32
P 6375 3025
F 0 "J4" H 6375 3275 50  0000 C CNN
F 1 "CONN_02X04" H 6375 2775 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 6375 1825 50  0001 C CNN
F 3 "" H 6375 1825 50  0001 C CNN
	1    6375 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 2975 5950 2975
Wire Wire Line
	5825 2875 5975 2875
Wire Wire Line
	5825 3075 6025 3075
Wire Wire Line
	7150 2975 7150 5900
Wire Wire Line
	6725 3675 6725 3600
Connection ~ 6725 3600
Wire Wire Line
	7475 2550 7225 2550
Wire Wire Line
	7225 2550 7225 2875
Wire Wire Line
	7225 2875 6625 2875
Wire Wire Line
	7225 3425 8450 3425
Wire Wire Line
	5925 2975 5925 3825
$Comp
L +5V #PWR022
U 1 1 5AA3F872
P 6425 3825
F 0 "#PWR022" H 6425 3675 50  0001 C CNN
F 1 "+5V" H 6425 3965 50  0000 C CNN
F 2 "" H 6425 3825 50  0001 C CNN
F 3 "" H 6425 3825 50  0001 C CNN
	1    6425 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 3075 5875 3925
Wire Wire Line
	5875 3925 5925 3925
Wire Wire Line
	5825 3375 5825 4025
Wire Wire Line
	5825 4025 5925 4025
Wire Wire Line
	6425 3925 6550 3925
Wire Wire Line
	6550 3925 6550 3650
Wire Wire Line
	6550 3650 5975 3650
Wire Wire Line
	5975 3650 5975 2875
$Comp
L GND #PWR023
U 1 1 5AA3FAD8
P 6425 4025
F 0 "#PWR023" H 6425 3775 50  0001 C CNN
F 1 "GND" H 6425 3875 50  0000 C CNN
F 2 "" H 6425 4025 50  0001 C CNN
F 3 "" H 6425 4025 50  0001 C CNN
	1    6425 4025
	1    0    0    -1  
$EndComp
NoConn ~ 5825 3275
Wire Wire Line
	6725 3600 6625 3600
Wire Wire Line
	6625 3600 6625 3175
$Comp
L LM7809CT U1
U 1 1 5AA3C8C4
P 2075 4100
F 0 "U1" H 1875 4300 50  0000 C CNN
F 1 "LM7809CT" H 2075 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2075 4200 50  0001 C CIN
F 3 "" H 2075 4100 50  0001 C CNN
	1    2075 4100
	1    0    0    -1  
$EndComp
$Comp
L LM78L05ACZ U3
U 1 1 5AA44AD0
P 8600 4675
F 0 "U3" H 8400 4875 50  0000 C CNN
F 1 "LM78L05ACZ" H 8600 4875 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 8600 4775 50  0001 C CIN
F 3 "" H 8600 4675 50  0001 C CNN
	1    8600 4675
	1    0    0    -1  
$EndComp
Connection ~ 3600 6275
Wire Wire Line
	5825 3175 6000 3175
Wire Wire Line
	6000 3175 6000 2875
Wire Wire Line
	6000 2875 6125 2875
Wire Wire Line
	6025 3075 6025 2975
Wire Wire Line
	6025 2975 6125 2975
Connection ~ 5875 3075
Wire Wire Line
	5950 2975 5950 3050
Wire Wire Line
	5950 3050 6050 3050
Wire Wire Line
	6050 3050 6050 3075
Wire Wire Line
	6050 3075 6125 3075
Connection ~ 5925 2975
Wire Wire Line
	5975 3200 6125 3200
Wire Wire Line
	6125 3200 6125 3175
Connection ~ 5975 3200
Wire Wire Line
	7150 2975 6625 2975
Wire Wire Line
	7225 3425 7225 3075
Wire Wire Line
	7225 3075 6625 3075
Wire Wire Line
	4875 5725 4875 5300
Wire Wire Line
	5080 5300 5080 5725
Connection ~ 4875 5300
Connection ~ 5080 5300
Wire Wire Line
	4800 5300 5375 5300
Wire Wire Line
	4875 6025 4875 6275
Connection ~ 4875 6275
Wire Wire Line
	5080 6025 5080 6275
Connection ~ 5080 6275
Wire Wire Line
	4300 5300 4500 5300
Wire Wire Line
	4055 5660 3600 5660
Connection ~ 3600 5660
Wire Wire Line
	4355 5660 4400 5660
Wire Wire Line
	4400 5660 4400 5300
Connection ~ 4400 5300
$Comp
L LM324 U2
U 3 1 5AA1A648
P 5675 5200
F 0 "U2" H 5675 5400 50  0000 L CNN
F 1 "LM324" H 5675 5000 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 5625 5300 50  0001 C CNN
F 3 "" H 5725 5400 50  0001 C CNN
	3    5675 5200
	1    0    0    -1  
$EndComp
Connection ~ 5325 5100
Wire Wire Line
	5325 4645 5325 4550
Connection ~ 5325 4550
$Comp
L Fuse F1
U 1 1 5AB2E1D9
P 1975 2740
F 0 "F1" V 2055 2740 50  0000 C CNN
F 1 "Fuse" V 1900 2740 50  0000 C CNN
F 2 "Footprints:Keystone20x5FuseHolder" V 1905 2740 50  0001 C CNN
F 3 "" H 1975 2740 50  0000 C CNN
	1    1975 2740
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 2540 1975 2590
Wire Wire Line
	1975 2890 1975 2950
$EndSCHEMATC
