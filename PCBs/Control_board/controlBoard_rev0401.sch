EESchema Schematic File Version 4
LIBS:controlBoard_rev0401-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L controlBoard_rev0401-rescue:Pi_Header-Arduino_Based U5
U 1 1 597A433A
P 8350 2450
F 0 "U5" H 8350 2350 50  0000 C CNN
F 1 "Pi_Header" H 8350 2550 50  0000 C CNN
F 2 "myLib:RPi_Cobbler" H 8350 2450 50  0001 C CNN
F 3 "DOCUMENTATION" H 8350 2450 50  0001 C CNN
	1    8350 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 597A47F0
P 7400 3400
F 0 "#PWR02" H 7400 3150 50  0001 C CNN
F 1 "GND" H 7400 3250 50  0000 C CNN
F 2 "" H 7400 3400 50  0000 C CNN
F 3 "" H 7400 3400 50  0000 C CNN
	1    7400 3400
	1    0    0    -1  
$EndComp
Text GLabel 6300 750  0    60   Input ~ 0
3.3V_ARD
$Comp
L Device:R R9
U 1 1 597A5452
P 6350 1100
F 0 "R9" V 6430 1100 50  0000 C CNN
F 1 "10k" V 6350 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6280 1100 50  0001 C CNN
F 3 "" H 6350 1100 50  0000 C CNN
	1    6350 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 597A5668
P 6550 1100
F 0 "R10" V 6630 1100 50  0000 C CNN
F 1 "10k" V 6550 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6480 1100 50  0001 C CNN
F 3 "" H 6550 1100 50  0000 C CNN
	1    6550 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 597A61F5
P 9600 3400
F 0 "D7" H 9600 3500 50  0000 C CNN
F 1 "LED" H 9600 3300 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 9600 3400 50  0001 C CNN
F 3 "" H 9600 3400 50  0000 C CNN
	1    9600 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 597A6F57
P 10100 3400
F 0 "R12" V 10180 3400 50  0000 C CNN
F 1 "400R" V 10100 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10030 3400 50  0001 C CNN
F 3 "" H 10100 3400 50  0000 C CNN
	1    10100 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 597A6FBA
P 10350 3450
F 0 "#PWR03" H 10350 3200 50  0001 C CNN
F 1 "GND" H 10350 3300 50  0000 C CNN
F 2 "" H 10350 3450 50  0000 C CNN
F 3 "" H 10350 3450 50  0000 C CNN
	1    10350 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 597A7EB5
P 7400 1900
F 0 "#PWR04" H 7400 1650 50  0001 C CNN
F 1 "GND" H 7400 1750 50  0000 C CNN
F 2 "" H 7400 1900 50  0000 C CNN
F 3 "" H 7400 1900 50  0000 C CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
Text Notes 7300 6850 0    138  ~ 28
IPAX Control Board
Text Notes 8750 7650 0    60   ~ 12
May 15, 2019
$Sheet
S 7250 4500 1650 1000
U 5988C2E9
F0 "powerControl" 60
F1 "powerControl.sch" 60
$EndSheet
Text GLabel 10150 1800 2    60   Input ~ 0
RXD
Text GLabel 10150 1900 2    60   Input ~ 0
TXD
Text GLabel 6250 1350 0    60   Input ~ 0
SDA
Text GLabel 6250 1450 0    60   Input ~ 0
SCL
Text GLabel 7300 2000 0    60   Input ~ 0
3.3V_CTL
Text GLabel 7450 2500 0    60   Input ~ 0
PUSH2
$Comp
L controlBoard_rev0401-rescue:OLED_I2C-LEDs U6
U 1 1 598BA86C
P 5750 2450
F 0 "U6" H 5750 2350 50  0000 C CNN
F 1 "OLED_I2C" H 5750 2550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5750 2450 50  0001 C CNN
F 3 "DOCUMENTATION" H 5750 2450 50  0001 C CNN
	1    5750 2450
	-1   0    0    1   
$EndComp
Text GLabel 6600 2600 2    60   Input ~ 0
3.3V_out
$Comp
L power:GND #PWR05
U 1 1 598BAB58
P 7150 2500
F 0 "#PWR05" H 7150 2250 50  0001 C CNN
F 1 "GND" H 7150 2350 50  0000 C CNN
F 2 "" H 7150 2500 50  0000 C CNN
F 3 "" H 7150 2500 50  0000 C CNN
	1    7150 2500
	1    0    0    -1  
$EndComp
Text GLabel 9200 1350 2    60   Input ~ 0
Vpi
Text Notes 9900 1550 0    60   ~ 0
To Arduino Device
Text GLabel 7250 1800 0    60   Input ~ 0
GPIO4
Text GLabel 7300 3200 0    60   Input ~ 0
Torch
$Comp
L Device:R R5
U 1 1 5B3C6C64
P 9800 1800
F 0 "R5" V 9880 1800 50  0000 C CNN
F 1 "400R" V 9800 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9730 1800 50  0001 C CNN
F 3 "" H 9800 1800 50  0000 C CNN
	1    9800 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5B3C6E35
P 9800 1900
F 0 "R11" V 9880 1900 50  0000 C CNN
F 1 "400R" V 9800 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9730 1900 50  0001 C CNN
F 3 "" H 9800 1900 50  0000 C CNN
	1    9800 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5B3C73AB
P 9400 1700
F 0 "#PWR09" H 9400 1450 50  0001 C CNN
F 1 "GND" H 9400 1550 50  0000 C CNN
F 2 "" H 9400 1700 50  0000 C CNN
F 3 "" H 9400 1700 50  0000 C CNN
	1    9400 1700
	1    0    0    -1  
$EndComp
Text GLabel 7500 2100 0    60   Input ~ 0
GPIO27
Text GLabel 7450 2400 0    60   Input ~ 0
PUSH
Text GLabel 10200 2200 2    60   Input ~ 0
RST
Wire Wire Line
	7400 3400 7600 3400
Wire Wire Line
	6350 1250 6350 1350
Wire Wire Line
	6550 1250 6550 1450
Wire Wire Line
	10250 3400 10350 3400
Wire Wire Line
	10350 3100 10350 3400
Connection ~ 10350 3400
Wire Wire Line
	9100 1800 9650 1800
Wire Wire Line
	9100 1900 9650 1900
Wire Wire Line
	7400 1900 7600 1900
Wire Wire Line
	9100 3100 10350 3100
Wire Wire Line
	6250 1350 6350 1350
Wire Wire Line
	6250 1450 6550 1450
Connection ~ 6350 1350
Connection ~ 6550 1450
Wire Wire Line
	7300 2000 7600 2000
Wire Wire Line
	6350 950  6350 750 
Wire Wire Line
	6300 750  6350 750 
Wire Wire Line
	6550 750  6550 950 
Connection ~ 6350 750 
Wire Wire Line
	7600 2500 7450 2500
Wire Wire Line
	6500 2500 7150 2500
Wire Wire Line
	6600 2600 6500 2600
Wire Wire Line
	9200 1350 9200 1500
Wire Wire Line
	9200 1600 9100 1600
Wire Wire Line
	9100 1500 9200 1500
Connection ~ 9200 1500
Wire Wire Line
	7250 1800 7600 1800
Wire Wire Line
	9100 3000 9200 3000
Wire Wire Line
	9950 1800 10150 1800
Wire Wire Line
	10150 1900 9950 1900
Wire Wire Line
	9100 1700 9400 1700
Wire Wire Line
	7600 2100 7500 2100
Wire Wire Line
	7450 2400 7600 2400
Wire Wire Line
	9100 2200 10200 2200
$Sheet
S 9400 4450 1450 1000
U 5BC9CFF4
F0 "sensors" 99
F1 "sensors.sch" 99
$EndSheet
Text GLabel 9200 3000 2    60   Input ~ 0
FAN_CTL
Text GLabel 7500 2600 0    60   Input ~ 0
Vhall
Wire Wire Line
	7500 2600 7600 2600
Wire Wire Line
	10350 3400 10350 3450
Wire Wire Line
	6550 1450 6550 1600
Wire Wire Line
	6350 750  6550 750 
Wire Wire Line
	9200 1500 9200 1600
Wire Wire Line
	9100 3400 9450 3400
Wire Wire Line
	9750 3400 9950 3400
Text GLabel 7250 3300 0    60   Input ~ 0
Flash
Wire Wire Line
	7250 3300 7600 3300
Text GLabel 9300 2000 2    60   Input ~ 0
LED_EN
Text GLabel 950  3800 0    60   Input ~ 0
3.3V_ARD
$Comp
L Device:C C?
U 1 1 5C0FCE24
P 1200 3950
AR Path="/5988C2E9/5C0FCE24" Ref="C?"  Part="1" 
AR Path="/5C0FCE24" Ref="C1"  Part="1" 
F 0 "C1" H 1225 4050 50  0000 L CNN
F 1 "1uF" H 1225 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1238 3800 50  0001 C CNN
F 3 "" H 1200 3950 50  0000 C CNN
	1    1200 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C0FCE2B
P 1450 3950
AR Path="/5988C2E9/5C0FCE2B" Ref="C?"  Part="1" 
AR Path="/5C0FCE2B" Ref="C2"  Part="1" 
F 0 "C2" H 1475 4050 50  0000 L CNN
F 1 "0.1uF" H 1475 3850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1488 3800 50  0001 C CNN
F 3 "" H 1450 3950 50  0000 C CNN
	1    1450 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0FCE32
P 1450 4150
AR Path="/5988C2E9/5C0FCE32" Ref="#PWR?"  Part="1" 
AR Path="/5C0FCE32" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 1450 3900 50  0001 C CNN
F 1 "GND" H 1450 4000 50  0000 C CNN
F 2 "" H 1450 4150 50  0000 C CNN
F 3 "" H 1450 4150 50  0000 C CNN
	1    1450 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0FCE38
P 2600 7100
AR Path="/5988C2E9/5C0FCE38" Ref="#PWR?"  Part="1" 
AR Path="/5C0FCE38" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 2600 6850 50  0001 C CNN
F 1 "GND" H 2600 6950 50  0000 C CNN
F 2 "" H 2600 7100 50  0000 C CNN
F 3 "" H 2600 7100 50  0000 C CNN
	1    2600 7100
	1    0    0    -1  
$EndComp
Text GLabel 3450 4450 2    60   Input ~ 0
PI_SIG
Text GLabel 3500 5550 2    60   Input ~ 0
SDA
Text GLabel 3500 5650 2    60   Input ~ 0
SCL
Text GLabel 3500 5950 2    60   Input ~ 0
RXD
Text GLabel 3500 6050 2    60   Input ~ 0
TXD
Text GLabel 3500 5750 2    60   Input ~ 0
RST
Text GLabel 3500 6150 2    60   Input ~ 0
alarm
Wire Wire Line
	950  3800 1200 3800
Connection ~ 1200 3800
Wire Wire Line
	1450 4150 1450 4100
Wire Wire Line
	1450 4100 1200 4100
Wire Wire Line
	3450 4450 3200 4450
Wire Wire Line
	3500 5550 3200 5550
Wire Wire Line
	3500 5650 3200 5650
Wire Wire Line
	3500 5950 3200 5950
Wire Wire Line
	3500 6050 3200 6050
Wire Wire Line
	3200 5750 3500 5750
Wire Wire Line
	3500 6150 3200 6150
Wire Wire Line
	3200 6250 3500 6250
Wire Wire Line
	3500 6350 3200 6350
Wire Wire Line
	3500 5350 3200 5350
$Comp
L Device:R R?
U 1 1 5C0FCE53
P 3650 6350
AR Path="/5988C2E9/5C0FCE53" Ref="R?"  Part="1" 
AR Path="/5C0FCE53" Ref="R1"  Part="1" 
F 0 "R1" V 3730 6350 50  0000 C CNN
F 1 "400R" V 3650 6350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3580 6350 50  0001 C CNN
F 3 "" H 3650 6350 50  0000 C CNN
	1    3650 6350
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5C0FCE5A
P 4150 6350
AR Path="/5988C2E9/5C0FCE5A" Ref="D?"  Part="1" 
AR Path="/5C0FCE5A" Ref="D1"  Part="1" 
F 0 "D1" H 4150 6450 50  0000 C CNN
F 1 "LED" H 4150 6250 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4150 6350 50  0001 C CNN
F 3 "" H 4150 6350 50  0000 C CNN
	1    4150 6350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0FCE61
P 4450 6500
AR Path="/5988C2E9/5C0FCE61" Ref="#PWR?"  Part="1" 
AR Path="/5C0FCE61" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4450 6250 50  0001 C CNN
F 1 "GND" H 4450 6350 50  0000 C CNN
F 2 "" H 4450 6500 50  0000 C CNN
F 3 "" H 4450 6500 50  0000 C CNN
	1    4450 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5C0FCE67
P 4600 3700
AR Path="/5988C2E9/5C0FCE67" Ref="Y?"  Part="1" 
AR Path="/5C0FCE67" Ref="Y1"  Part="1" 
F 0 "Y1" H 4600 3850 50  0000 C CNN
F 1 "Crystal" H 4600 3550 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM3-2Pin_5.0x3.2mm" H 4600 3700 50  0001 C CNN
F 3 "" H 4600 3700 50  0000 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C0FCE6E
P 4250 3850
AR Path="/5988C2E9/5C0FCE6E" Ref="C?"  Part="1" 
AR Path="/5C0FCE6E" Ref="C3"  Part="1" 
F 0 "C3" H 4275 3950 50  0000 L CNN
F 1 "22pF" H 4275 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4288 3700 50  0001 C CNN
F 3 "" H 4250 3850 50  0000 C CNN
	1    4250 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C0FCE75
P 4900 3850
AR Path="/5988C2E9/5C0FCE75" Ref="C?"  Part="1" 
AR Path="/5C0FCE75" Ref="C4"  Part="1" 
F 0 "C4" H 4925 3950 50  0000 L CNN
F 1 "22pF" H 4925 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 3700 50  0001 C CNN
F 3 "" H 4900 3850 50  0000 C CNN
	1    4900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C0FCE7C
P 4600 4000
AR Path="/5988C2E9/5C0FCE7C" Ref="#PWR?"  Part="1" 
AR Path="/5C0FCE7C" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 4600 3750 50  0001 C CNN
F 1 "GND" H 4600 3850 50  0000 C CNN
F 2 "" H 4600 4000 50  0000 C CNN
F 3 "" H 4600 4000 50  0000 C CNN
	1    4600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3700 4400 3700
Wire Wire Line
	4750 3700 4800 3700
Wire Wire Line
	4250 4000 4600 4000
Connection ~ 4600 4000
Text GLabel 3450 4850 2    60   Input ~ 0
CRYSTAL1
Text GLabel 3450 4950 2    60   Input ~ 0
CRYSTAL2
Text GLabel 4300 3550 0    60   Input ~ 0
CRYSTAL1
Text GLabel 4900 3550 2    60   Input ~ 0
CRYSTAL2
Wire Wire Line
	3200 4850 3450 4850
Wire Wire Line
	3450 4950 3200 4950
Wire Wire Line
	4400 3550 4400 3700
Connection ~ 4400 3700
Wire Wire Line
	4800 3550 4800 3700
Connection ~ 4800 3700
Wire Wire Line
	4450 6350 4450 6500
Text GLabel 3500 6250 2    60   Input ~ 0
Vhall
Wire Wire Line
	3500 6550 3200 6550
Text GLabel 3500 5350 2    60   Input ~ 0
I_LED
Text GLabel 3500 6550 2    60   Input ~ 0
FAN_CTL
Wire Wire Line
	3450 4550 3200 4550
Text GLabel 3500 5450 2    60   Input ~ 0
Torch
Wire Wire Line
	3200 4650 3450 4650
Text GLabel 2000 4550 0    60   Input ~ 0
I_PI
Wire Wire Line
	3200 5450 3500 5450
Wire Wire Line
	3200 4750 3450 4750
Text GLabel 3500 5150 2    60   Input ~ 0
I_BATT
Wire Wire Line
	3500 5150 3200 5150
Wire Wire Line
	1200 3800 1450 3800
Wire Wire Line
	4600 4000 4900 4000
Wire Wire Line
	4400 3700 4450 3700
Wire Wire Line
	4800 3700 4900 3700
$Comp
L controlBoard_rev0401-rescue:ATmega328P-AU-MCU_Microchip_ATmega U?
U 1 1 5C0FCEA5
P 2600 5450
AR Path="/5988C2E9/5C0FCEA5" Ref="U?"  Part="1" 
AR Path="/5C0FCEA5" Ref="U1"  Part="1" 
F 0 "U1" H 2600 4650 50  0000 C CNN
F 1 "ATmega328P-AU" H 2550 4500 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2600 5450 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2600 5450 50  0001 C CNN
	1    2600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6350 4000 6350
Wire Wire Line
	4300 6350 4450 6350
Wire Wire Line
	2600 7100 2600 6950
Text GLabel 2600 3800 0    60   Input ~ 0
3.3V_ARD
Wire Wire Line
	2600 3950 2600 3800
Text GLabel 3450 4250 2    60   Input ~ 0
3.3V_CTL
Wire Wire Line
	3450 4250 3200 4250
NoConn ~ 2000 4250
Connection ~ 1450 4100
Text Notes 7850 1100 0    79   ~ 16
Raspberry Pi
Text Notes 2350 3600 0    79   ~ 16
ATMega328
Wire Wire Line
	4300 3550 4400 3550
Wire Wire Line
	4900 3550 4800 3550
Text Notes 9150 7350 0    98   ~ 20
Rev04.c
Text Notes 8050 7500 0    60   ~ 12
P. Lertvilai
Text GLabel 3500 5250 2    60   Input ~ 0
V_BATT
Wire Wire Line
	3500 5250 3200 5250
Text GLabel 3500 6450 2    60   Input ~ 0
LED_EN
Wire Wire Line
	3500 6450 3200 6450
Text GLabel 3500 6650 2    60   Input ~ 0
Flash
Wire Wire Line
	3500 6650 3200 6650
$Sheet
S 1250 950  1400 700 
U 5C488B3C
F0 "i2c_sensors" 98
F1 "i2c_sensors.sch" 98
$EndSheet
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J?
U 1 1 5C4813C5
P 5650 5200
AR Path="/5C4955EF/5C4813C5" Ref="J?"  Part="1" 
AR Path="/5C4813C5" Ref="J1"  Part="1" 
F 0 "J1" H 5700 5517 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5700 5426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5650 5200 50  0001 C CNN
F 3 "~" H 5650 5200 50  0001 C CNN
	1    5650 5200
	1    0    0    -1  
$EndComp
Text GLabel 5250 5100 0    59   Input ~ 0
MISO
Text GLabel 5250 5200 0    59   Input ~ 0
SCK
Text GLabel 5250 5300 0    59   Input ~ 0
RST
Text GLabel 6250 5100 2    59   Input ~ 0
3.3V_ARD
Text GLabel 6250 5200 2    59   Input ~ 0
MOSI
$Comp
L power:GND #PWR?
U 1 1 5C4813D1
P 6250 5350
AR Path="/5C4955EF/5C4813D1" Ref="#PWR?"  Part="1" 
AR Path="/5C4813D1" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 6250 5100 50  0001 C CNN
F 1 "GND" H 6255 5177 50  0000 C CNN
F 2 "" H 6250 5350 50  0001 C CNN
F 3 "" H 6250 5350 50  0001 C CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5100 5250 5100
Wire Wire Line
	5450 5200 5250 5200
Wire Wire Line
	5450 5300 5250 5300
Wire Wire Line
	5950 5100 6250 5100
Wire Wire Line
	6250 5200 5950 5200
Wire Wire Line
	5950 5300 6250 5300
Wire Wire Line
	6250 5300 6250 5350
Text Notes 5400 4750 0    59   ~ 0
ICSP Programmer
Text GLabel 3450 4350 2    60   Input ~ 0
PI_CTL
Wire Wire Line
	3450 4350 3200 4350
Text GLabel 1900 4450 0    60   Input ~ 0
LED_SENSE
Wire Wire Line
	1900 4450 2000 4450
Text GLabel 3450 4650 2    59   Input ~ 0
MISO
Text GLabel 3450 4550 2    59   Input ~ 0
MOSI
Text GLabel 3450 4750 2    59   Input ~ 0
SCK
Wire Wire Line
	9300 2000 9100 2000
Wire Wire Line
	7300 3200 7600 3200
Wire Wire Line
	2600 3800 2700 3800
Wire Wire Line
	2700 3800 2700 3950
$Comp
L arduinoBased:FTDI_Basic U8
U 1 1 5C7DE2F4
P 6700 6350
F 0 "U8" H 6728 6396 50  0000 L CNN
F 1 "FTDI_Basic" H 6728 6305 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6700 6350 50  0001 C CNN
F 3 "DOCUMENTATION" H 6700 6350 50  0001 C CNN
	1    6700 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C7DE3EC
P 5700 6100
AR Path="/5988C2E9/5C7DE3EC" Ref="C?"  Part="1" 
AR Path="/5C7DE3EC" Ref="C18"  Part="1" 
F 0 "C18" H 5725 6200 50  0000 L CNN
F 1 "0.1uF" H 5725 6000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5738 5950 50  0001 C CNN
F 3 "" H 5700 6100 50  0000 C CNN
	1    5700 6100
	0    1    1    0   
$EndComp
Text GLabel 5400 6100 0    60   Input ~ 0
RST
Text GLabel 5850 6300 0    60   Input ~ 0
RXD
Text GLabel 5850 6200 0    60   Input ~ 0
TXD
Text GLabel 5850 6400 0    59   Input ~ 0
3.3V_ARD
$Comp
L power:GND #PWR?
U 1 1 5C7DE6E8
P 5850 6600
AR Path="/5C4955EF/5C7DE6E8" Ref="#PWR?"  Part="1" 
AR Path="/5C7DE6E8" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 5850 6350 50  0001 C CNN
F 1 "GND" H 5855 6427 50  0000 C CNN
F 2 "" H 5850 6600 50  0001 C CNN
F 3 "" H 5850 6600 50  0001 C CNN
	1    5850 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6100 5550 6100
Wire Wire Line
	5850 6100 5950 6100
Wire Wire Line
	5850 6200 5950 6200
Wire Wire Line
	5950 6300 5850 6300
Wire Wire Line
	5850 6400 5950 6400
Wire Wire Line
	5950 6500 5850 6500
Wire Wire Line
	5850 6500 5850 6600
Wire Wire Line
	5950 6600 5850 6600
Connection ~ 5850 6600
Text GLabel 9700 2300 2    60   Input ~ 0
PI_SIG
Wire Wire Line
	9100 2300 9700 2300
NoConn ~ 7600 1500
Text GLabel 1150 2550 0    60   Input ~ 0
3.3V_ARD
$Comp
L Device:C C?
U 1 1 5C80F216
P 1400 2700
AR Path="/5988C2E9/5C80F216" Ref="C?"  Part="1" 
AR Path="/5C80F216" Ref="C9"  Part="1" 
F 0 "C9" H 1425 2800 50  0000 L CNN
F 1 "22uF" H 1425 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1438 2550 50  0001 C CNN
F 3 "" H 1400 2700 50  0000 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C80F21D
P 1650 2700
AR Path="/5988C2E9/5C80F21D" Ref="C?"  Part="1" 
AR Path="/5C80F21D" Ref="C17"  Part="1" 
F 0 "C17" H 1675 2800 50  0000 L CNN
F 1 "22uF" H 1675 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1688 2550 50  0001 C CNN
F 3 "" H 1650 2700 50  0000 C CNN
	1    1650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C80F224
P 1650 2900
AR Path="/5988C2E9/5C80F224" Ref="#PWR?"  Part="1" 
AR Path="/5C80F224" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 1650 2650 50  0001 C CNN
F 1 "GND" H 1650 2750 50  0000 C CNN
F 2 "" H 1650 2900 50  0000 C CNN
F 3 "" H 1650 2900 50  0000 C CNN
	1    1650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2550 1400 2550
Connection ~ 1400 2550
Wire Wire Line
	1650 2900 1650 2850
Wire Wire Line
	1650 2850 1400 2850
Wire Wire Line
	1400 2550 1650 2550
Connection ~ 1650 2850
Text Notes 750  2450 0    59   ~ 0
For general 3.3V
Wire Wire Line
	6350 2100 6500 2100
Wire Wire Line
	6500 2100 6500 2300
Wire Wire Line
	6350 1350 6350 2100
Wire Wire Line
	6500 2400 6600 2400
Wire Wire Line
	6600 2400 6600 1600
Wire Wire Line
	6600 1600 6550 1600
Wire Wire Line
	7600 1600 7250 1600
Wire Wire Line
	7600 1700 7250 1700
Text Label 7250 1600 0    59   ~ 0
Pi_SDA
Text Label 7250 1700 0    59   ~ 0
Pi_SCL
Wire Wire Line
	4200 1200 3900 1200
Wire Wire Line
	4500 1200 4800 1200
Text GLabel 3900 1200 0    60   Input ~ 0
SDA
Text Label 4800 1200 0    59   ~ 0
Pi_SDA
Wire Wire Line
	4200 1600 3900 1600
Wire Wire Line
	4500 1600 4800 1600
Text GLabel 3900 1600 0    60   Input ~ 0
SCL
Text Label 4800 1600 0    59   ~ 0
Pi_SCL
$Comp
L Device:R R7
U 1 1 5CDCAE4C
P 4350 1200
F 0 "R7" V 4430 1200 50  0000 C CNN
F 1 "10k" V 4350 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0000 C CNN
	1    4350 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5CDDB1AC
P 4350 1600
F 0 "R8" V 4430 1600 50  0000 C CNN
F 1 "10k" V 4350 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4280 1600 50  0001 C CNN
F 3 "" H 4350 1600 50  0000 C CNN
	1    4350 1600
	0    1    1    0   
$EndComp
$EndSCHEMATC
