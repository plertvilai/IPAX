EESchema Schematic File Version 4
LIBS:controlBoard_rev05a-cache
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
Text Notes 2600 4500 0    60   ~ 0
Pi Power Control
Wire Wire Line
	2350 5350 2500 5350
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5C0D950E
P 3950 4800
AR Path="/5C0D950E" Ref="J?"  Part="1" 
AR Path="/5988C2E9/5C0D950E" Ref="J2"  Part="1" 
F 0 "J2" H 4056 4978 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4056 4887 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3950 4800 50  0001 C CNN
F 3 "~" H 3950 4800 50  0001 C CNN
	1    3950 4800
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
Text GLabel 4300 4800 2    60   Input ~ 0
Vpi
Text GLabel 4300 4900 2    60   Input ~ 0
5V
Wire Wire Line
	4150 4800 4300 4800
Wire Wire Line
	4300 4900 4150 4900
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
Text GLabel 3800 5250 2    60   Input ~ 0
Vpi
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
L controlBoard_rev05a-rescue:INA181-powerReg-controlBoard_rev0401-rescue U4
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
LED_EN2
Wire Wire Line
	6000 2150 5250 2150
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
	3550 5250 3800 5250
$Comp
L Device:CP C5
U 1 1 5E8C4AD5
P 5300 4900
F 0 "C5" H 5418 4946 50  0000 L CNN
F 1 "CP" H 5418 4855 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5338 4750 50  0001 C CNN
F 3 "~" H 5300 4900 50  0001 C CNN
	1    5300 4900
	1    0    0    -1  
$EndComp
Text GLabel 5400 4700 2    60   Input ~ 0
Vpi
$Comp
L power:GND #PWR?
U 1 1 5E8C4B17
P 5300 5150
AR Path="/5BC9CFF4/5E8C4B17" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5E8C4B17" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5300 4900 50  0001 C CNN
F 1 "GND" H 5300 5000 50  0000 C CNN
F 2 "" H 5300 5150 50  0000 C CNN
F 3 "" H 5300 5150 50  0000 C CNN
	1    5300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4750 5300 4700
Wire Wire Line
	5300 4700 5400 4700
Wire Wire Line
	5300 5050 5300 5150
$EndSCHEMATC
