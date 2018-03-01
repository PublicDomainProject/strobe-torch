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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:strobe-torch-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Strobe-Torch"
Date "2018-02-28"
Rev "1.0"
Comp "Public Domain Project"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C1
U 1 1 570B0551
P 4400 3450
F 0 "C1" H 4425 3550 50  0000 L CNN
F 1 "100n" H 4425 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4438 3300 50  0001 C CNN
F 3 "" H 4400 3450 50  0000 C CNN
	1    4400 3450
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 570B0DB6
P 4400 3100
F 0 "#PWR01" H 4400 2950 50  0001 C CNN
F 1 "VCC" H 4400 3250 50  0000 C CNN
F 2 "" H 4400 3100 50  0000 C CNN
F 3 "" H 4400 3100 50  0000 C CNN
	1    4400 3100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 570B138E
P 4400 5650
F 0 "#PWR02" H 4400 5400 50  0001 C CNN
F 1 "GND" H 4400 5500 50  0000 C CNN
F 2 "" H 4400 5650 50  0000 C CNN
F 3 "" H 4400 5650 50  0000 C CNN
	1    4400 5650
	1    0    0    -1  
$EndComp
$Comp
L ATTINY25-20SU U1
U 1 1 5A96CC0B
P 5900 3450
F 0 "U1" H 7050 3850 50  0000 C CNN
F 1 "ATTINY25V-10SU" H 6800 3050 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6850 3450 50  0001 C CIN
F 3 "" H 5900 3450 50  0001 C CNN
F 4 "Microchip" H 5900 3450 60  0001 C CNN "Manufacturer"
	1    5900 3450
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 5A981934
P 1850 3450
F 0 "BT1" H 1700 3600 50  0000 L CNN
F 1 "Battery" H 1700 3150 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" V 1850 3510 50  0001 C CNN
F 3 "" V 1850 3510 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A981AD5
P 8050 2450
F 0 "Y1" H 8050 2600 50  0000 C CNN
F 1 "4.9152MHz" H 8050 2300 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD" H 8050 2450 50  0001 C CNN
F 3 "" H 8050 2450 50  0001 C CNN
	1    8050 2450
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D4
U 1 1 5A981BD7
P 4100 4650
F 0 "D4" H 4100 4750 50  0000 C CNN
F 1 "1N4148" H 4100 4550 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 4100 4650 50  0001 C CNN
F 3 "" H 4100 4650 50  0001 C CNN
	1    4100 4650
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D5
U 1 1 5A981C3A
P 4100 5050
F 0 "D5" H 4100 5150 50  0000 C CNN
F 1 "1N4148" H 4100 4950 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 4100 5050 50  0001 C CNN
F 3 "" H 4100 5050 50  0001 C CNN
	1    4100 5050
	1    0    0    -1  
$EndComp
$Comp
L D_ALT D6
U 1 1 5A981C65
P 4100 5450
F 0 "D6" H 4100 5550 50  0000 C CNN
F 1 "1N4148" H 4100 5350 50  0000 C CNN
F 2 "Diodes_SMD:D_MiniMELF" H 4100 5450 50  0001 C CNN
F 3 "" H 4100 5450 50  0001 C CNN
	1    4100 5450
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D1
U 1 1 5A981C9E
P 9950 2500
F 0 "D1" H 9950 2600 50  0000 C CNN
F 1 "White Sideemitting" H 9700 2350 50  0000 C CNN
F 2 "LEDs:LED_1206" H 9950 2500 50  0001 C CNN
F 3 "" H 9950 2500 50  0001 C CNN
F 4 "Xiasongxin" H 9950 2500 60  0001 C CNN "Manufacturer"
F 5 "215 White SMD LED 2.8*1,2*0,8mm" H 9950 2500 60  0001 C CNN "Partnummer"
	1    9950 2500
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D3
U 1 1 5A981DE0
P 3600 3450
F 0 "D3" H 3600 3550 50  0000 C CNN
F 1 "Green InGaN" H 3600 3300 50  0000 C CNN
F 2 "LEDs:LED_0603" H 3600 3450 50  0001 C CNN
F 3 "" H 3600 3450 50  0001 C CNN
F 4 "Everlight" H 3600 3450 60  0001 C CNN "Manufacturer"
F 5 "19-213/GHC-XS1T1N/3T" H 3600 3450 60  0001 C CNN "Partnummer"
	1    3600 3450
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR03
U 1 1 5A9821A1
P 1850 3100
F 0 "#PWR03" H 1850 2950 50  0001 C CNN
F 1 "+12V" H 1850 3240 50  0000 C CNN
F 2 "" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
$Comp
L Logo_Open_Hardware_Small #LOGO1
U 1 1 5A9824D5
P 10950 6800
F 0 "#LOGO1" H 10950 7075 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10950 6575 50  0001 C CNN
F 2 "" H 10950 6800 50  0001 C CNN
F 3 "" H 10950 6800 50  0001 C CNN
	1    10950 6800
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A9827F9
P 3100 4650
F 0 "SW1" H 2900 4800 50  0000 L CNN
F 1 "50Hz" H 3100 4590 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP2" H 3100 4850 50  0001 C CNN
F 3 "" H 3100 4850 50  0001 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A982870
P 3100 5050
F 0 "SW2" H 2900 5200 50  0000 L CNN
F 1 "60Hz" H 3100 4990 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP2" H 3100 5250 50  0001 C CNN
F 3 "" H 3100 5250 50  0001 C CNN
	1    3100 5050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5A9828A9
P 3100 5450
F 0 "SW3" H 2900 5600 50  0000 L CNN
F 1 "300Hz" H 3100 5390 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP2" H 3100 5650 50  0001 C CNN
F 3 "" H 3100 5650 50  0001 C CNN
	1    3100 5450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A982A53
P 3000 3200
F 0 "R1" V 2900 3200 50  0000 C CNN
F 1 "1k5" V 3000 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2930 3200 50  0001 C CNN
F 3 "" H 3000 3200 50  0000 C CNN
	1    3000 3200
	0    1    1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 5A983263
P 8200 2850
F 0 "C3" V 8100 2800 50  0000 L CNN
F 1 "20pF" V 8300 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8200 2850 50  0001 C CNN
F 3 "" H 8200 2850 50  0001 C CNN
	1    8200 2850
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 5A9832CE
P 7900 2850
F 0 "C2" V 7800 2800 50  0000 L CNN
F 1 "20pF" V 8000 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7900 2850 50  0001 C CNN
F 3 "" H 7900 2850 50  0001 C CNN
	1    7900 2850
	0    1    1    0   
$EndComp
Text Notes 1550 2800 0    60   ~ 0
TODO: Batterie ersetzen\nmit TEKO Gehäuse
$Comp
L R R2
U 1 1 5A98433E
P 9050 3300
F 0 "R2" V 8950 3300 50  0000 C CNN
F 1 "270" V 9050 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8980 3300 50  0001 C CNN
F 3 "" H 9050 3300 50  0000 C CNN
	1    9050 3300
	0    1    1    0   
$EndComp
$Comp
L TEST TP1
U 1 1 5A984FAC
P 2200 3200
F 0 "TP1" H 2200 3500 50  0000 C BNN
F 1 "Bat+" H 2200 3450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2200 3200 50  0001 C CNN
F 3 "" H 2200 3200 50  0001 C CNN
	1    2200 3200
	1    0    0    -1  
$EndComp
$Comp
L TEST TP2
U 1 1 5A985079
P 2200 3700
F 0 "TP2" H 2200 4000 50  0000 C BNN
F 1 "Bat-" H 2200 3950 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 2200 3700 50  0001 C CNN
F 3 "" H 2200 3700 50  0001 C CNN
	1    2200 3700
	1    0    0    -1  
$EndComp
$Comp
L TEST TP6
U 1 1 5A985113
P 3950 3200
F 0 "TP6" H 3950 3500 50  0000 C BNN
F 1 "VCC" H 3950 3450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3950 3200 50  0001 C CNN
F 3 "" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
$Comp
L TEST TP7
U 1 1 5A9852C2
P 3950 3700
F 0 "TP7" H 3950 4000 50  0000 C BNN
F 1 "GND" H 3950 3950 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	1    0    0    -1  
$EndComp
$Comp
L TEST TP3
U 1 1 5A98545A
P 3400 4650
F 0 "TP3" H 3400 4950 50  0000 C BNN
F 1 "50Hz" H 3400 4900 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3400 4650 50  0001 C CNN
F 3 "" H 3400 4650 50  0001 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
$Comp
L TEST TP4
U 1 1 5A9854E9
P 3400 5050
F 0 "TP4" H 3400 5350 50  0000 C BNN
F 1 "60Hz" H 3400 5300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3400 5050 50  0001 C CNN
F 3 "" H 3400 5050 50  0001 C CNN
	1    3400 5050
	1    0    0    -1  
$EndComp
$Comp
L TEST TP5
U 1 1 5A985557
P 3400 5450
F 0 "TP5" H 3400 5750 50  0000 C BNN
F 1 "300Hz" H 3400 5700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3400 5450 50  0001 C CNN
F 3 "" H 3400 5450 50  0001 C CNN
	1    3400 5450
	1    0    0    -1  
$EndComp
$Comp
L TEST TP8
U 1 1 5A9855C4
P 7700 2450
F 0 "TP8" H 7700 2750 50  0000 C BNN
F 1 "Clki" H 7700 2700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7700 2450 50  0001 C CNN
F 3 "" H 7700 2450 50  0001 C CNN
	1    7700 2450
	1    0    0    -1  
$EndComp
$Comp
L TEST TP12
U 1 1 5A98575C
P 9950 2750
F 0 "TP12" H 9950 3050 50  0000 C BNN
F 1 "LED1" H 9950 3000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9950 2750 50  0001 C CNN
F 3 "" H 9950 2750 50  0001 C CNN
	1    9950 2750
	0    -1   -1   0   
$EndComp
$Comp
L TEST TP11
U 1 1 5A987EB7
P 9650 3300
F 0 "TP11" H 9650 3600 50  0000 C BNN
F 1 "LED2" H 9650 3550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9650 3300 50  0001 C CNN
F 3 "" H 9650 3300 50  0001 C CNN
	1    9650 3300
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 5A988189
P 9950 2250
F 0 "#PWR04" H 9950 2100 50  0001 C CNN
F 1 "+12V" H 9950 2390 50  0000 C CNN
F 2 "" H 9950 2250 50  0001 C CNN
F 3 "" H 9950 2250 50  0001 C CNN
	1    9950 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A98930E
P 8050 2950
F 0 "#PWR05" H 8050 2700 50  0001 C CNN
F 1 "GND" H 8050 2800 50  0000 C CNN
F 2 "" H 8050 2950 50  0000 C CNN
F 3 "" H 8050 2950 50  0000 C CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
$Comp
L TEST TP9
U 1 1 5A989BDD
P 8400 2450
F 0 "TP9" H 8400 2750 50  0000 C BNN
F 1 "Clko" H 8400 2700 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8400 2450 50  0001 C CNN
F 3 "" H 8400 2450 50  0001 C CNN
	1    8400 2450
	1    0    0    -1  
$EndComp
Text Notes 10750 7100 0    60   ~ 12
SPFMDBC
Text Notes 3250 3200 0    60   ~ 0
5mA
Text Notes 9250 3300 0    60   ~ 0
20mA
$Comp
L TEST TP10
U 1 1 5A98FAD1
P 8750 3300
F 0 "TP10" H 8750 3600 50  0000 C BNN
F 1 "PWMout" H 8750 3550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8750 3300 50  0001 C CNN
F 3 "" H 8750 3300 50  0001 C CNN
	1    8750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3600 4400 5650
Connection ~ 4400 3700
Wire Wire Line
	4400 3100 4400 3300
Connection ~ 4400 3200
Wire Wire Line
	4250 4650 4400 4650
Connection ~ 4400 5450
Wire Wire Line
	4250 5050 4400 5050
Connection ~ 4400 5050
Connection ~ 4400 4650
Wire Wire Line
	3600 3600 3600 3700
Wire Wire Line
	1850 3100 1850 3250
Wire Wire Line
	1850 3200 2850 3200
Connection ~ 1850 3200
Wire Wire Line
	3600 3200 3600 3300
Connection ~ 3600 3200
Wire Wire Line
	3300 4650 3950 4650
Wire Wire Line
	3300 5050 3950 5050
Wire Wire Line
	3300 5450 3950 5450
Wire Wire Line
	1850 3650 1850 3700
Wire Wire Line
	1850 3700 2750 3700
Wire Wire Line
	2750 3700 2750 5450
Wire Wire Line
	2750 5450 2900 5450
Wire Wire Line
	2900 5050 2750 5050
Connection ~ 2750 5050
Wire Wire Line
	2900 4650 2750 4650
Connection ~ 2750 4650
Wire Wire Line
	3850 5450 3850 4350
Wire Wire Line
	3850 4350 7600 4350
Wire Wire Line
	7600 4350 7600 3700
Wire Wire Line
	7600 3700 7250 3700
Connection ~ 3850 5450
Wire Wire Line
	3750 5050 3750 4250
Wire Wire Line
	3750 4250 7500 4250
Wire Wire Line
	7500 4250 7500 3200
Connection ~ 3750 5050
Wire Wire Line
	7400 3400 7400 4150
Wire Wire Line
	7400 4150 3650 4150
Wire Wire Line
	3650 4150 3650 4650
Connection ~ 3650 4650
Wire Wire Line
	9950 2650 9950 2850
Wire Wire Line
	9950 3300 9950 3150
Wire Wire Line
	9200 3300 9950 3300
Wire Wire Line
	9950 2250 9950 2350
Wire Wire Line
	7900 2450 7700 2450
Wire Wire Line
	7700 2450 7700 3500
Wire Wire Line
	7700 3500 7250 3500
Wire Wire Line
	7250 3300 8900 3300
Wire Wire Line
	8200 2450 8400 2450
Wire Wire Line
	8400 2450 8400 3600
Wire Wire Line
	8400 3600 7250 3600
Wire Wire Line
	7700 2850 7800 2850
Connection ~ 7700 2850
Wire Wire Line
	8000 2850 8100 2850
Wire Wire Line
	8050 2950 8050 2850
Connection ~ 8050 2850
Wire Wire Line
	8400 2850 8300 2850
Connection ~ 8400 2850
Connection ~ 3400 4650
Connection ~ 3400 5050
Connection ~ 3400 5450
Connection ~ 2200 3700
Connection ~ 2200 3200
Connection ~ 7700 2450
Connection ~ 8400 2450
Connection ~ 9950 2750
Connection ~ 9650 3300
Wire Wire Line
	4250 5450 4400 5450
Connection ~ 8750 3300
Connection ~ 3950 3200
Connection ~ 3950 3700
Wire Wire Line
	3150 3200 4550 3200
Wire Wire Line
	3600 3700 4550 3700
$Comp
L LED_ALT D2
U 1 1 5A995E65
P 9950 3000
F 0 "D2" H 9950 3100 50  0000 C CNN
F 1 "White Sideemitting" H 10200 2850 50  0000 C CNN
F 2 "LEDs:LED_1206" H 9950 3000 50  0001 C CNN
F 3 "" H 9950 3000 50  0001 C CNN
F 4 "Xiasongxin" H 9950 3000 60  0001 C CNN "Manufacturer"
F 5 "215 White SMD LED 2.8*1,2*0,8mm" H 9950 3000 60  0001 C CNN "Partnummer"
	1    9950 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 3200 7250 3200
Wire Wire Line
	7400 3400 7250 3400
$EndSCHEMATC
