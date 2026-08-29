EESchema Schematic File Version 4
LIBS:remote_pc_power
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Remote Desktop PC Power Controller"
Date "2026-08-29"
Rev "0.1"
Comp "Raspberry Pi Zero 2 W / Tailscale Remote Power"
Comment1 "Power source selectable: ATX +5VSB or external +5V"
Comment2 "PWR_SW via TLP241B; PWR_LED sense via PC817X3"
Comment3 "PCB layout/footprints intentionally left to designer"
Comment4 "Open in KiCad 6+ and Save As to convert to .kicad_sch"
$EndDescr
Text Notes 700 650 0 100 ~ 20
POWER INPUT / SOURCE SELECT
Text Notes 6200 650 0 100 ~ 20
RASPBERRY PI CONNECTION
Text Notes 700 3350 0 100 ~ 20
POWER SWITCH CONTROL
Text Notes 6200 3350 0 100 ~ 20
POWER LED MONITOR

$Comp
L remote_pc_power:CONN2 J1
U 1 1 10000001
P 1200 1150
F 0 "J1" H 1200 1350 50  0000 C CNN
F 1 "ATX_5VSB_IN" H 1200 950 50 0000 C CNN
	1    1200 1150
	1 0 0 -1
$EndComp
Text Label 900 1100 2 50 ~ 0
+5VSB_RAW
Text Label 900 1200 2 50 ~ 0
GND
Wire Wire Line
	900 1100 1000 1100
Wire Wire Line
	900 1200 1000 1200

$Comp
L remote_pc_power:FUSE_PTC F1
U 1 1 10000002
P 2200 1100
F 0 "F1" H 2200 1200 50 0000 C CNN
F 1 "PTC_1A_to_1.5A" H 2200 1000 50 0000 C CNN
	1    2200 1100
	1 0 0 -1
$EndComp
Text Label 1900 1100 2 50 ~ 0
+5VSB_RAW
Text Label 2500 1100 0 50 ~ 0
+5VSB_FUSED
Wire Wire Line
	1900 1100 2000 1100
Wire Wire Line
	2400 1100 2500 1100

$Comp
L remote_pc_power:CONN2 J2
U 1 1 10000003
P 1200 1700
F 0 "J2" H 1200 1900 50 0000 C CNN
F 1 "EXT_5V_IN" H 1200 1500 50 0000 C CNN
	1    1200 1700
	1 0 0 -1
$EndComp
Text Label 900 1650 2 50 ~ 0
+5V_EXT_RAW
Text Label 900 1750 2 50 ~ 0
GND
Wire Wire Line
	900 1650 1000 1650
Wire Wire Line
	900 1750 1000 1750

$Comp
L remote_pc_power:FUSE_PTC F2
U 1 1 10000004
P 2200 1650
F 0 "F2" H 2200 1750 50 0000 C CNN
F 1 "PTC_1A_to_1.5A" H 2200 1550 50 0000 C CNN
	1    2200 1650
	1 0 0 -1
$EndComp
Text Label 1900 1650 2 50 ~ 0
+5V_EXT_RAW
Text Label 2500 1650 0 50 ~ 0
+5V_EXT_FUSED
Wire Wire Line
	1900 1650 2000 1650
Wire Wire Line
	2400 1650 2500 1650

$Comp
L remote_pc_power:CONN3 JP1
U 1 1 10000005
P 3600 1400
F 0 "JP1" H 3600 1625 50 0000 C CNN
F 1 "POWER_SELECT" H 3600 1175 50 0000 C CNN
	1    3600 1400
	1 0 0 -1
$EndComp
Text Label 3200 1330 2 50 ~ 0
+5VSB_FUSED
Text Label 3200 1400 2 50 ~ 0
+5V_PI
Text Label 3200 1470 2 50 ~ 0
+5V_EXT_FUSED
Wire Wire Line
	3200 1330 3400 1330
Wire Wire Line
	3200 1400 3400 1400
Wire Wire Line
	3200 1470 3400 1470
Text Notes 3250 1750 0 50 ~ 0
Shunt 1-2: ATX +5VSB / Shunt 2-3: External +5V

$Comp
L remote_pc_power:C_GENERIC C1
U 1 1 10000006
P 4550 1400
F 0 "C1" H 4625 1475 50 0000 L CNN
F 1 "470uF / 10V+" H 4625 1325 50 0000 L CNN
	1    4550 1400
	1 0 0 -1
$EndComp
Text Label 4550 1100 0 50 ~ 0
+5V_PI
Text Label 4550 1700 0 50 ~ 0
GND
Wire Wire Line
	4550 1100 4550 1200
Wire Wire Line
	4550 1600 4550 1700

$Comp
L remote_pc_power:C_GENERIC C2
U 1 1 10000007
P 5400 1400
F 0 "C2" H 5475 1475 50 0000 L CNN
F 1 "100nF" H 5475 1325 50 0000 L CNN
	1    5400 1400
	1 0 0 -1
$EndComp
Text Label 5400 1100 0 50 ~ 0
+5V_PI
Text Label 5400 1700 0 50 ~ 0
GND
Wire Wire Line
	5400 1100 5400 1200
Wire Wire Line
	5400 1600 5400 1700

$Comp
L remote_pc_power:CONN5 J7
U 1 1 10000008
P 7600 1450
F 0 "J7" H 7600 1750 50 0000 C CNN
F 1 "RPI_ZERO2W_USED_PINS" H 7600 1150 50 0000 C CNN
	1    7600 1450
	1 0 0 -1
$EndComp
Text Label 7050 1290 2 50 ~ 0
+5V_PI
Text Label 7050 1370 2 50 ~ 0
+3V3_PI
Text Label 7050 1450 2 50 ~ 0
GND
Text Label 7050 1530 2 50 ~ 0
GPIO23_PWR_SW
Text Label 7050 1610 2 50 ~ 0
GPIO24_PWR_LED
Wire Wire Line
	7050 1290 7350 1290
Wire Wire Line
	7050 1370 7350 1370
Wire Wire Line
	7050 1450 7350 1450
Wire Wire Line
	7050 1530 7350 1530
Wire Wire Line
	7050 1610 7350 1610
Text Notes 8250 1200 0 50 ~ 0
J7 logical pin -> Raspberry Pi physical header
Text Notes 8250 1320 0 50 ~ 0
1: +5V_PI -> Pin 2 (or 4)
Text Notes 8250 1420 0 50 ~ 0
2: +3V3_PI -> Pin 1
Text Notes 8250 1520 0 50 ~ 0
3: GND -> Pin 6
Text Notes 8250 1620 0 50 ~ 0
4: GPIO23 -> Pin 16
Text Notes 8250 1720 0 50 ~ 0
5: GPIO24 -> Pin 18

$Comp
L remote_pc_power:R_GENERIC R1
U 1 1 10000009
P 2050 4000
F 0 "R1" H 2050 4100 50 0000 C CNN
F 1 "390R" H 2050 3900 50 0000 C CNN
	1    2050 4000
	1 0 0 -1
$EndComp
Text Label 1700 4000 2 50 ~ 0
GPIO23_PWR_SW
Text Label 2400 4000 0 50 ~ 0
TLP_IN_A
Wire Wire Line
	1700 4000 1850 4000
Wire Wire Line
	2250 4000 2400 4000

$Comp
L remote_pc_power:R_GENERIC R2
U 1 1 1000000A
P 2050 4400
F 0 "R2" H 2050 4500 50 0000 C CNN
F 1 "10k PULLDOWN" H 2050 4300 50 0000 C CNN
	1    2050 4400
	1 0 0 -1
$EndComp
Text Label 1700 4400 2 50 ~ 0
GPIO23_PWR_SW
Text Label 2400 4400 0 50 ~ 0
GND
Wire Wire Line
	1700 4400 1850 4400
Wire Wire Line
	2250 4400 2400 4400

$Comp
L remote_pc_power:TLP241B U1
U 1 1 1000000B
P 3550 4200
F 0 "U1" H 3550 4500 50 0000 C CNN
F 1 "TLP241B" H 3550 3900 50 0000 C CNN
	1    3550 4200
	1 0 0 -1
$EndComp
Text Label 3150 4120 2 50 ~ 0
TLP_IN_A
Text Label 3150 4280 2 50 ~ 0
GND
Text Label 3950 4120 0 50 ~ 0
PWR_SW_A
Text Label 3950 4280 0 50 ~ 0
PWR_SW_B
Wire Wire Line
	3150 4120 3250 4120
Wire Wire Line
	3150 4280 3250 4280
Wire Wire Line
	3850 4120 3950 4120
Wire Wire Line
	3850 4280 3950 4280
Text Notes 3150 4700 0 50 ~ 0
U1 output is floating / polarity-independent switch contact

$Comp
L remote_pc_power:CONN2 J3
U 1 1 1000000C
P 5000 4050
F 0 "J3" H 5000 4250 50 0000 C CNN
F 1 "MB_PWR_SW" H 5000 3850 50 0000 C CNN
	1    5000 4050
	1 0 0 -1
$EndComp
Text Label 4700 4000 2 50 ~ 0
PWR_SW_A
Text Label 4700 4100 2 50 ~ 0
PWR_SW_B
Wire Wire Line
	4700 4000 4800 4000
Wire Wire Line
	4700 4100 4800 4100

$Comp
L remote_pc_power:CONN2 J4
U 1 1 1000000D
P 5000 4600
F 0 "J4" H 5000 4800 50 0000 C CNN
F 1 "CASE_PWR_SW" H 5000 4400 50 0000 C CNN
	1    5000 4600
	1 0 0 -1
$EndComp
Text Label 4700 4550 2 50 ~ 0
PWR_SW_A
Text Label 4700 4650 2 50 ~ 0
PWR_SW_B
Wire Wire Line
	4700 4550 4800 4550
Wire Wire Line
	4700 4650 4800 4650
Text Notes 4550 5000 0 50 ~ 0
Case button remains electrically parallel with U1

$Comp
L remote_pc_power:CONN2 J5
U 1 1 1000000E
P 6750 4050
F 0 "J5" H 6750 4250 50 0000 C CNN
F 1 "MB_PWR_LED" H 6750 3850 50 0000 C CNN
	1    6750 4050
	1 0 0 -1
$EndComp
Text Label 6450 4000 2 50 ~ 0
PWR_LED_P
Text Label 6450 4100 2 50 ~ 0
PWR_LED_N
Wire Wire Line
	6450 4000 6550 4000
Wire Wire Line
	6450 4100 6550 4100

$Comp
L remote_pc_power:CONN2 J6
U 1 1 1000000F
P 6750 4600
F 0 "J6" H 6750 4800 50 0000 C CNN
F 1 "CASE_PWR_LED" H 6750 4400 50 0000 C CNN
	1    6750 4600
	1 0 0 -1
$EndComp
Text Label 6450 4550 2 50 ~ 0
PWR_LED_P
Text Label 6450 4650 2 50 ~ 0
PWR_LED_N
Wire Wire Line
	6450 4550 6550 4550
Wire Wire Line
	6450 4650 6550 4650

$Comp
L remote_pc_power:R_GENERIC R3
U 1 1 10000010
P 7800 4000
F 0 "R3" H 7800 4100 50 0000 C CNN
F 1 "2.2k" H 7800 3900 50 0000 C CNN
	1    7800 4000
	1 0 0 -1
$EndComp
Text Label 7450 4000 2 50 ~ 0
PWR_LED_P
Text Label 8150 4000 0 50 ~ 0
OPTO_LED_A
Wire Wire Line
	7450 4000 7600 4000
Wire Wire Line
	8000 4000 8150 4000

$Comp
L remote_pc_power:PC817X3 U2
U 1 1 10000011
P 9000 4200
F 0 "U2" H 9000 4500 50 0000 C CNN
F 1 "PC817X3NSZ1B" H 9000 3900 50 0000 C CNN
	1    9000 4200
	1 0 0 -1
$EndComp
Text Label 8600 4120 2 50 ~ 0
OPTO_LED_A
Text Label 8600 4280 2 50 ~ 0
PWR_LED_N
Text Label 9400 4120 0 50 ~ 0
GPIO24_PWR_LED
Text Label 9400 4280 0 50 ~ 0
GND
Wire Wire Line
	8600 4120 8700 4120
Wire Wire Line
	8600 4280 8700 4280
Wire Wire Line
	9300 4120 9400 4120
Wire Wire Line
	9300 4280 9400 4280

$Comp
L remote_pc_power:R_GENERIC R4
U 1 1 10000012
P 9000 4800
F 0 "R4" H 9000 4900 50 0000 C CNN
F 1 "10k PULLUP" H 9000 4700 50 0000 C CNN
	1    9000 4800
	1 0 0 -1
$EndComp
Text Label 8650 4800 2 50 ~ 0
+3V3_PI
Text Label 9350 4800 0 50 ~ 0
GPIO24_PWR_LED
Wire Wire Line
	8650 4800 8800 4800
Wire Wire Line
	9200 4800 9350 4800
Text Notes 8200 5200 0 50 ~ 0
PWR LED ON -> U2 ON -> GPIO24 LOW

Text Notes 700 5800 0 60 ~ 12
DESIGN NOTES
Text Notes 700 6000 0 50 ~ 0
1. JP1 is a mutually-exclusive 3-pin source selector; never short +5VSB and EXT_5V together.
Text Notes 700 6125 0 50 ~ 0
2. F1/F2 values are placeholders; choose hold current after measuring actual Pi Zero 2 W load.
Text Notes 700 6250 0 50 ~ 0
3. ATX source must be +5VSB (purple wire / ATX 24-pin pin 9), not normal switched +5V.
Text Notes 700 6375 0 50 ~ 0
4. RPi GPIO23 is physical pin 16; GPIO24 is physical pin 18. GPIO levels are 3.3V only.
Text Notes 700 6500 0 50 ~ 0
5. Verify actual motherboard PWR_LED voltage/polarity before finalizing R3.
Text Notes 700 6625 0 50 ~ 0
6. No automatic restart logic is implemented; software only drives GPIO23 on explicit command.

$EndSCHEMATC
