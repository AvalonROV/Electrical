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
LIBS:avalon_communication_board-cache
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
L +12V #PWR?
U 1 1 5A85BE6A
P 800 850
F 0 "#PWR?" H 800 700 50  0001 C CNN
F 1 "+12V" H 800 990 50  0000 C CNN
F 2 "" H 800 850 50  0000 C CNN
F 3 "" H 800 850 50  0000 C CNN
	1    800  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1050 1100 1050
$Comp
L GND #PWR?
U 1 1 5A85BEDF
P 800 1800
F 0 "#PWR?" H 800 1550 50  0001 C CNN
F 1 "GND" H 800 1650 50  0000 C CNN
F 2 "" H 800 1800 50  0000 C CNN
F 3 "" H 800 1800 50  0000 C CNN
	1    800  1800
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 5A85BF83
P 800 1350
F 0 "C1" H 825 1450 50  0000 L CNN
F 1 "100uF" H 825 1250 50  0000 L CNN
F 2 "" H 838 1200 50  0000 C CNN
F 3 "" H 800 1350 50  0000 C CNN
	1    800  1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  850  800  1200
Connection ~ 800  1050
$Comp
L INDUCTOR L1
U 1 1 5A85C344
P 2400 1350
F 0 "L1" V 2350 1350 50  0000 C CNN
F 1 "100uH" V 2500 1350 50  0000 C CNN
F 2 "" H 2400 1350 50  0000 C CNN
F 3 "" H 2400 1350 50  0000 C CNN
	1    2400 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 1050 2000 1050
$Comp
L CP C2
U 1 1 5A85C5C7
P 2800 1550
F 0 "C2" H 2825 1650 50  0000 L CNN
F 1 "1000uF" H 2825 1450 50  0000 L CNN
F 2 "" H 2838 1400 50  0000 C CNN
F 3 "" H 2800 1550 50  0000 C CNN
	1    2800 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1200 1100 1750
Wire Wire Line
	2700 1350 3350 1350
Wire Wire Line
	2800 1050 2800 1400
Connection ~ 2800 1350
Wire Wire Line
	800  1500 800  1800
Wire Wire Line
	800  1750 2800 1750
Wire Wire Line
	2800 1750 2800 1700
Connection ~ 800  1750
Connection ~ 1100 1750
Wire Wire Line
	2100 1350 2000 1350
Text Notes 1300 750  0    60   ~ 0
12 - 3.3VDC Regulator
$Comp
L LM2576D2TR4-3.3G V?
U 1 1 5A86207C
P 1550 1200
F 0 "V?" H 1350 1500 60  0000 C CNN
F 1 "LM2576" H 1550 900 60  0000 C CNN
F 2 "" H 1550 700 60  0000 C CNN
F 3 "" H 1550 700 60  0000 C CNN
	1    1550 1200
	1    0    0    -1  
$EndComp
Connection ~ 1100 1350
$Comp
L +3.3V #PWR?
U 1 1 5A8624DD
P 3350 1350
F 0 "#PWR?" H 3350 1200 50  0001 C CNN
F 1 "+3.3V" H 3350 1490 50  0000 C CNN
F 2 "" H 3350 1350 50  0000 C CNN
F 3 "" H 3350 1350 50  0000 C CNN
	1    3350 1350
	1    0    0    -1  
$EndComp
Text Notes 600  1390 0    60   ~ 0
Al
$Comp
L D_Schottky D1
U 1 1 5A862E28
P 2050 1550
F 0 "D1" H 2050 1650 50  0000 C CNN
F 1 "1N5820" H 2050 1450 50  0000 C CNN
F 2 "" H 2050 1550 50  0000 C CNN
F 3 "" H 2050 1550 50  0000 C CNN
	1    2050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 1400 2050 1350
Connection ~ 2050 1350
Wire Wire Line
	2050 1700 2050 1750
Connection ~ 2050 1750
Text Notes 2920 1590 0    60   ~ 0
Al
$EndSCHEMATC
