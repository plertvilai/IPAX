EESchema Schematic File Version 4
LIBS:controlBoard_rev0401-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
LED Control
$Comp
L Device:R R?
U 1 1 5C143855
P 4250 4100
AR Path="/5BC9CFF4/5C143855" Ref="R?"  Part="1" 
AR Path="/5988C2E9/5C143855" Ref="R?"  Part="1" 
AR Path="/5C143855" Ref="R?"  Part="1" 
AR Path="/5988C2E9/5CDB91C8/5C143855" Ref="R4"  Part="1" 
F 0 "R4" V 4330 4100 50  0000 C CNN
F 1 "400R" V 4250 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4180 4100 50  0001 C CNN
F 3 "" H 4250 4100 50  0000 C CNN
	1    4250 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C143863
P 4850 3250
AR Path="/5BC9CFF4/5C143863" Ref="R?"  Part="1" 
AR Path="/5988C2E9/5C143863" Ref="R?"  Part="1" 
AR Path="/5C143863" Ref="R?"  Part="1" 
AR Path="/5988C2E9/5CDB91C8/5C143863" Ref="R6"  Part="1" 
F 0 "R6" V 4930 3250 50  0000 C CNN
F 1 "10k" V 4850 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4780 3250 50  0001 C CNN
F 3 "" H 4850 3250 50  0000 C CNN
	1    4850 3250
	0    1    1    0   
$EndComp
Text Notes 3950 2850 0    60   ~ 0
Strobe Mode Control
$Comp
L power:GND #PWR?
U 1 1 5C4BE080
P 5000 4400
AR Path="/5BC9CFF4/5C4BE080" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5C4BE080" Ref="#PWR?"  Part="1" 
AR Path="/5C4BE080" Ref="#PWR?"  Part="1" 
AR Path="/5988C2E9/5CDB91C8/5C4BE080" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5000 4150 50  0001 C CNN
F 1 "GND" H 5000 4250 50  0000 C CNN
F 2 "" H 5000 4400 50  0000 C CNN
F 3 "" H 5000 4400 50  0000 C CNN
	1    5000 4400
	1    0    0    -1  
$EndComp
$Comp
L transistors:PMOS Q1
U 1 1 5CD81322
P 4400 3550
F 0 "Q1" H 4638 3504 50  0000 L CNN
F 1 "PMOS" H 4638 3595 50  0000 L CNN
F 2 "Package_SON:Diodes_PowerDI3333-8" H 4600 3475 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 4400 3550 50  0001 L CNN
	1    4400 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 5CD81461
P 4900 4100
F 0 "Q2" H 5105 4146 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 5105 4055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5100 4200 50  0001 C CNN
F 3 "~" H 4900 4100 50  0001 C CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3150 4300 3150
Wire Wire Line
	4300 3150 4300 3250
Wire Wire Line
	4250 3350 4250 3300
Wire Wire Line
	4250 3300 4300 3300
Connection ~ 4300 3300
Wire Wire Line
	4300 3300 4300 3350
Wire Wire Line
	4350 3350 4350 3300
Wire Wire Line
	4350 3300 4300 3300
Wire Wire Line
	4300 3750 4300 3850
Wire Wire Line
	4300 3850 4250 3850
Wire Wire Line
	4700 3250 4300 3250
Connection ~ 4300 3250
Wire Wire Line
	4300 3250 4300 3300
Wire Wire Line
	5000 3900 5000 3550
Wire Wire Line
	4600 3550 5000 3550
Connection ~ 5000 3550
Wire Wire Line
	5000 3550 5000 3250
Wire Wire Line
	4400 4100 4700 4100
Wire Wire Line
	5000 4300 5000 4400
Wire Wire Line
	3950 4100 4100 4100
Text HLabel 4250 3150 0    98   Input ~ 0
IN
Text HLabel 4250 3850 0    98   Input ~ 0
OUT
Text HLabel 3950 4100 0    98   Input ~ 0
CTL
$EndSCHEMATC
