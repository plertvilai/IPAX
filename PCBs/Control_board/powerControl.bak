EESchema Schematic File Version 4
LIBS:controlBoard_rev0401-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8250 6900 0    138  ~ 28
Power Control
Text GLabel 2350 5350 0    60   Input ~ 0
PI_CTL
Text Notes 2550 4350 0    60   ~ 0
Pi Power Control
Wire Wire Line
	2350 5350 2500 5350
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5C0D950E
P 900 5650
AR Path="/5C0D950E" Ref="J?"  Part="1" 
AR Path="/5988C2E9/5C0D950E" Ref="J2"  Part="1" 
F 0 "J2" H 1006 5828 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1006 5737 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 900 5650 50  0001 C CNN
F 3 "~" H 900 5650 50  0001 C CNN
	1    900  5650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5C460366
P 2500 1900
F 0 "J3" H 2606 2278 50  0000 C CNN
F 1 "Conn_01x06_Male" H 2606 2187 50  0000 C CNN
F 2 "myLib:conn_1x06_1.5mm" H 2500 1900 50  0001 C CNN
F 3 "~" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C475009
P 3850 1700
AR Path="/5BC9CFF4/5C475009" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5C475009" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 3850 1450 50  0001 C CNN
F 1 "GND" H 3850 1550 50  0000 C CNN
F 2 "" H 3850 1700 50  0000 C CNN
F 3 "" H 3850 1700 50  0000 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
Text GLabel 3450 2200 2    59   Input ~ 0
5V
Text GLabel 3450 2000 2    59   Input ~ 0
3.3V_ARD
Text GLabel 3450 2100 2    59   Input ~ 0
5V_EN
Wire Wire Line
	2700 1700 3850 1700
Wire Wire Line
	2700 2000 3450 2000
Wire Wire Line
	2700 2100 3450 2100
Text Notes 3150 1500 0    59   ~ 0
Input from power board
Text GLabel 5550 6250 2    60   Input ~ 0
Vpi
Text GLabel 1250 5650 2    60   Input ~ 0
Vpi
Text GLabel 1250 5750 2    60   Input ~ 0
5V
Wire Wire Line
	1100 5650 1250 5650
Wire Wire Line
	1250 5750 1100 5750
$Comp
L controlBoard_rev0401-rescue:NCP361-powerReg U3
U 1 1 5C49578D
P 4600 6500
F 0 "U3" H 4750 7015 50  0000 C CNN
F 1 "NCP361" H 4750 6924 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4750 6600 50  0001 C CNN
F 3 "DOCUMENTATION" H 4750 6600 50  0001 C CNN
	1    4600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 6250 5400 6250
Wire Wire Line
	3600 6250 3750 6250
$Comp
L power:GND #PWR?
U 1 1 5C4986BC
P 4600 7200
AR Path="/5BC9CFF4/5C4986BC" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5C4986BC" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 4600 6950 50  0001 C CNN
F 1 "GND" H 4600 7050 50  0000 C CNN
F 2 "" H 4600 7200 50  0000 C CNN
F 3 "" H 4600 7200 50  0000 C CNN
	1    4600 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 7100 4600 7150
Wire Wire Line
	4150 6500 4150 7150
Wire Wire Line
	4150 7150 4600 7150
Connection ~ 4600 7150
Wire Wire Line
	4600 7150 4600 7200
$Comp
L Device:LED D3
U 1 1 5C49BA33
P 5700 6500
F 0 "D3" H 5691 6716 50  0000 C CNN
F 1 "RED" H 5691 6625 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5700 6500 50  0001 C CNN
F 3 "~" H 5700 6500 50  0001 C CNN
	1    5700 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C49BA96
P 6150 6500
AR Path="/5BC9CFF4/5C49BA96" Ref="R?"  Part="1" 
AR Path="/5988C2E9/5C49BA96" Ref="R13"  Part="1" 
F 0 "R13" V 6230 6500 50  0000 C CNN
F 1 "10k" V 6150 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6080 6500 50  0001 C CNN
F 3 "" H 6150 6500 50  0000 C CNN
	1    6150 6500
	0    1    1    0   
$EndComp
Text Label 3650 6250 0    59   ~ 0
5V_NPTC
Wire Wire Line
	5550 6500 5350 6500
Wire Wire Line
	5850 6500 6000 6500
Wire Wire Line
	6300 6500 6450 6500
Text Label 6450 6500 0    59   ~ 0
5V_NPTC
$Comp
L Device:R R?
U 1 1 5C4A2790
P 3050 2200
AR Path="/5BC9CFF4/5C4A2790" Ref="R?"  Part="1" 
AR Path="/5988C2E9/5C4A2790" Ref="R2"  Part="1" 
F 0 "R2" V 3130 2200 50  0000 C CNN
F 1 "0.01R" V 3050 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2980 2200 50  0001 C CNN
F 3 "" H 3050 2200 50  0000 C CNN
	1    3050 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 2200 2900 2200
Wire Wire Line
	3200 2200 3450 2200
Text Label 2800 2200 0    39   ~ 0
5V_IN
Text GLabel 3050 1900 2    59   Input ~ 0
I_BATT
Text GLabel 3050 1800 2    59   Input ~ 0
V_BATT
Wire Wire Line
	3050 1900 2700 1900
Wire Wire Line
	3050 1800 2700 1800
$Comp
L Device:C C?
U 1 1 5C4CFA59
P 3750 6550
AR Path="/5BC9CFF4/5C4CFA59" Ref="C?"  Part="1" 
AR Path="/5988C2E9/5C4CFA59" Ref="C5"  Part="1" 
F 0 "C5" H 3865 6596 50  0000 L CNN
F 1 "10uF" H 3865 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3788 6400 50  0001 C CNN
F 3 "~" H 3750 6550 50  0001 C CNN
	1    3750 6550
	1    0    0    -1  
$EndComp
Text GLabel 5450 6750 2    60   Input ~ 0
Vpi
Wire Wire Line
	3750 6250 3750 6400
Connection ~ 3750 6250
Wire Wire Line
	3750 6250 4050 6250
Wire Wire Line
	3750 6700 3750 7150
Wire Wire Line
	3750 7150 4150 7150
Connection ~ 4150 7150
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5C51F7D5
P 5050 1850
F 0 "J4" H 5156 2228 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5156 2137 50  0000 C CNN
F 2 "myLib:conn_1x06_1.5mm" H 5050 1850 50  0001 C CNN
F 3 "~" H 5050 1850 50  0001 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C51F7DC
P 6400 1650
AR Path="/5BC9CFF4/5C51F7DC" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5C51F7DC" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 6400 1400 50  0001 C CNN
F 1 "GND" H 6400 1500 50  0000 C CNN
F 2 "" H 6400 1650 50  0000 C CNN
F 3 "" H 6400 1650 50  0000 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Text GLabel 6000 1950 2    59   Input ~ 0
Torch
Text GLabel 6000 2050 2    59   Input ~ 0
LED_EN
Wire Wire Line
	5250 1650 6400 1650
Wire Wire Line
	5250 1950 6000 1950
Wire Wire Line
	5250 2050 6000 2050
Text Notes 5700 1450 0    59   ~ 0
Input from power board
Text GLabel 5600 1850 2    59   Input ~ 0
Flash
Text GLabel 5600 1750 2    59   Input ~ 0
I_LED
Wire Wire Line
	5600 1850 5250 1850
Wire Wire Line
	5600 1750 5250 1750
$Comp
L controlBoard_rev0401-rescue:INA181-powerReg U4
U 1 1 5C52284F
P 7200 3900
F 0 "U4" H 7275 4728 50  0000 C CNN
F 1 "INA181" H 7275 4637 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 7450 4400 50  0001 C CNN
F 3 "DOCUMENTATION" H 7450 4400 50  0001 C CNN
	1    7200 3900
	1    0    0    -1  
$EndComp
Text GLabel 7250 3000 2    59   Input ~ 0
3.3V_ARD
Wire Wire Line
	7250 3000 7200 3000
Wire Wire Line
	7200 3000 7200 3250
$Comp
L power:GND #PWR?
U 1 1 5C5231B8
P 7200 4600
AR Path="/5BC9CFF4/5C5231B8" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5C5231B8" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 7200 4350 50  0001 C CNN
F 1 "GND" H 7200 4450 50  0000 C CNN
F 2 "" H 7200 4600 50  0000 C CNN
F 3 "" H 7200 4600 50  0000 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4400 7200 4500
Wire Wire Line
	7800 3900 7800 4500
Wire Wire Line
	7800 4500 7200 4500
Connection ~ 7200 4500
Wire Wire Line
	7200 4500 7200 4600
Wire Wire Line
	6750 3750 6300 3750
Wire Wire Line
	6750 3900 6300 3900
Text Label 6300 3750 0    39   ~ 0
5V_IN
Text GLabel 6300 3900 0    59   Input ~ 0
5V
Text GLabel 8100 3750 2    59   Input ~ 0
I_PI
Wire Wire Line
	8100 3750 7800 3750
Text GLabel 6000 2150 2    59   Input ~ 0
LED_SENSE
Wire Wire Line
	6000 2150 5250 2150
$Comp
L Device:C C?
U 1 1 5C4C763B
P 5150 7000
AR Path="/5BC9CFF4/5C4C763B" Ref="C?"  Part="1" 
AR Path="/5988C2E9/5C4C763B" Ref="C8"  Part="1" 
F 0 "C8" H 5265 7046 50  0000 L CNN
F 1 "1000uF" H 5265 6955 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5188 6850 50  0001 C CNN
F 3 "~" H 5150 7000 50  0001 C CNN
	1    5150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 7150 4600 7150
Wire Wire Line
	5150 6850 5150 6750
Wire Wire Line
	5150 6750 5450 6750
$Sheet
S 2500 4900 1050 650 
U 5CDB91C8
F0 "powerFET" 59
F1 "powerFET.sch" 59
F2 "IN" I L 2500 5000 98 
F3 "OUT" I R 3550 5250 98 
F4 "CTL" I L 2500 5350 98 
$EndSheet
Text GLabel 2300 5000 0    60   Input ~ 0
5V
Wire Wire Line
	2300 5000 2500 5000
Wire Wire Line
	3550 5250 3600 5250
Wire Wire Line
	3600 5250 3600 6250
$Comp
L Device:R R3
U 1 1 5CDC10FE
P 4700 5600
F 0 "R3" V 4493 5600 50  0000 C CNN
F 1 "R" V 4584 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 4630 5600 50  0001 C CNN
F 3 "~" H 4700 5600 50  0001 C CNN
	1    4700 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5600 4050 5600
Wire Wire Line
	4050 5600 4050 6250
Connection ~ 4050 6250
Wire Wire Line
	4050 6250 4150 6250
Wire Wire Line
	4850 5600 5400 5600
Wire Wire Line
	5400 5600 5400 6250
Connection ~ 5400 6250
Wire Wire Line
	5400 6250 5350 6250
$EndSCHEMATC
