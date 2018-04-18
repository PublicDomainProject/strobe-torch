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
P 4050 3500
F 0 "C1" H 4075 3600 50  0000 L CNN
F 1 "100n" H 4075 3400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4088 3350 50  0001 C CNN
F 3 "" H 4050 3500 50  0000 C CNN
	1    4050 3500
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 570B0DB6
P 4050 3150
F 0 "#PWR01" H 4050 3000 50  0001 C CNN
F 1 "VCC" H 4050 3300 50  0000 C CNN
F 2 "" H 4050 3150 50  0000 C CNN
F 3 "" H 4050 3150 50  0000 C CNN
	1    4050 3150
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 570B138E
P 4050 5850
F 0 "#PWR02" H 4050 5600 50  0001 C CNN
F 1 "GND" H 4050 5700 50  0000 C CNN
F 2 "" H 4050 5850 50  0000 C CNN
F 3 "" H 4050 5850 50  0000 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
$Comp
L ATTINY25-20SU U1
U 1 1 5A96CC0B
P 5550 3500
F 0 "U1" H 6700 3900 50  0000 C CNN
F 1 "ATTINY25V-10SU" H 6450 3100 50  0000 C CNN
F 2 "Housings_SOIC:SO-8_5.3x6.2mm_Pitch1.27mm" H 6500 3500 50  0001 C CIN
F 3 "" H 5550 3500 50  0001 C CNN
F 4 "Microchip" H 5550 3500 60  0001 C CNN "Manufacturer"
	1    5550 3500
	-1   0    0    -1  
$EndComp
$Comp
L Battery BT1
U 1 1 5A981934
P 1500 3500
F 0 "BT1" H 1350 3650 50  0000 L CNN
F 1 "Battery" H 1350 3200 50  0000 L CNN
F 2 "Battery_Holder:Teko_1112x_battery_compartment" V 1500 3560 50  0001 C CNN
F 3 "" V 1500 3560 50  0001 C CNN
	1    1500 3500
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5A981AD5
P 7700 2050
F 0 "Y1" H 7700 2200 50  0000 C CNN
F 1 "4.9152MHz" H 7700 1900 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_HC49-SD" H 7700 2050 50  0001 C CNN
F 3 "" H 7700 2050 50  0001 C CNN
	1    7700 2050
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D1
U 1 1 5A981C9E
P 10000 2050
F 0 "D1" H 10000 2150 50  0000 C CNN
F 1 "White Sideemitting" H 9750 1900 50  0000 C CNN
F 2 "LEDs_Side_Emitting:LED_215" H 10000 2050 50  0001 C CNN
F 3 "" H 10000 2050 50  0001 C CNN
F 4 "Xiasongxin" H 10000 2050 60  0001 C CNN "Manufacturer"
F 5 "215 White SMD LED 2.8*1,2*0,8mm" H 10000 2050 60  0001 C CNN "Partnummer"
	1    10000 2050
	0    -1   -1   0   
$EndComp
$Comp
L LED_ALT D3
U 1 1 5A981DE0
P 3250 3500
F 0 "D3" H 3250 3600 50  0000 C CNN
F 1 "Green InGaN" H 3250 3350 50  0000 C CNN
F 2 "LEDs:LED_0603" H 3250 3500 50  0001 C CNN
F 3 "" H 3250 3500 50  0001 C CNN
F 4 "Everlight" H 3250 3500 60  0001 C CNN "Manufacturer"
F 5 "19-213/GHC-XS1T1N/3T" H 3250 3500 60  0001 C CNN "Partnummer"
	1    3250 3500
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR03
U 1 1 5A9821A1
P 1500 3150
F 0 "#PWR03" H 1500 3000 50  0001 C CNN
F 1 "+12V" H 1500 3290 50  0000 C CNN
F 2 "" H 1500 3150 50  0001 C CNN
F 3 "" H 1500 3150 50  0001 C CNN
	1    1500 3150
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
P 2750 4600
F 0 "SW1" H 2550 4750 50  0000 L CNN
F 1 "50Hz" H 2750 4540 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 2750 4800 50  0001 C CNN
F 3 "" H 2750 4800 50  0001 C CNN
	1    2750 4600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A982870
P 2750 5200
F 0 "SW2" H 2550 5350 50  0000 L CNN
F 1 "60Hz" H 2750 5140 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 2750 5400 50  0001 C CNN
F 3 "" H 2750 5400 50  0001 C CNN
	1    2750 5200
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW3
U 1 1 5A9828A9
P 2750 5800
F 0 "SW3" H 2550 5950 50  0000 L CNN
F 1 "300Hz" H 2750 5740 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 2750 6000 50  0001 C CNN
F 3 "" H 2750 6000 50  0001 C CNN
	1    2750 5800
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A982A53
P 2650 3250
F 0 "R1" V 2550 3250 50  0000 C CNN
F 1 "1k8" V 2650 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2580 3250 50  0001 C CNN
F 3 "" H 2650 3250 50  0000 C CNN
	1    2650 3250
	0    1    1    0   
$EndComp
$Comp
L C_Small C3
U 1 1 5A983263
P 7850 2450
F 0 "C3" V 7750 2400 50  0000 L CNN
F 1 "20pF" V 7950 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7850 2450 50  0001 C CNN
F 3 "" H 7850 2450 50  0001 C CNN
	1    7850 2450
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 5A9832CE
P 7550 2450
F 0 "C2" V 7450 2400 50  0000 L CNN
F 1 "20pF" V 7650 2350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7550 2450 50  0001 C CNN
F 3 "" H 7550 2450 50  0001 C CNN
	1    7550 2450
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A98433E
P 9100 2850
F 0 "R2" V 9000 2850 50  0000 C CNN
F 1 "150" V 9100 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9030 2850 50  0001 C CNN
F 3 "" H 9100 2850 50  0000 C CNN
	1    9100 2850
	0    1    1    0   
$EndComp
$Comp
L TEST TP1
U 1 1 5A984FAC
P 1850 3250
F 0 "TP1" H 1850 3550 50  0000 C BNN
F 1 "Bat+" H 1850 3500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1850 3250 50  0001 C CNN
F 3 "" H 1850 3250 50  0001 C CNN
	1    1850 3250
	1    0    0    -1  
$EndComp
$Comp
L TEST TP2
U 1 1 5A985079
P 1850 3750
F 0 "TP2" H 1850 4050 50  0000 C BNN
F 1 "Bat-" H 1850 4000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 1850 3750 50  0001 C CNN
F 3 "" H 1850 3750 50  0001 C CNN
	1    1850 3750
	1    0    0    -1  
$EndComp
$Comp
L TEST TP6
U 1 1 5A985113
P 3600 3250
F 0 "TP6" H 3600 3550 50  0000 C BNN
F 1 "VCC" H 3600 3500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3600 3250 50  0001 C CNN
F 3 "" H 3600 3250 50  0001 C CNN
	1    3600 3250
	1    0    0    -1  
$EndComp
$Comp
L TEST TP7
U 1 1 5A9852C2
P 3600 3750
F 0 "TP7" H 3600 4050 50  0000 C BNN
F 1 "GND" H 3600 4000 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3600 3750 50  0001 C CNN
F 3 "" H 3600 3750 50  0001 C CNN
	1    3600 3750
	1    0    0    -1  
$EndComp
$Comp
L TEST TP3
U 1 1 5A98545A
P 3050 4600
F 0 "TP3" H 3050 4900 50  0000 C BNN
F 1 "50Hz" H 3050 4850 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3050 4600 50  0001 C CNN
F 3 "" H 3050 4600 50  0001 C CNN
	1    3050 4600
	1    0    0    -1  
$EndComp
$Comp
L TEST TP4
U 1 1 5A9854E9
P 3050 5200
F 0 "TP4" H 3050 5500 50  0000 C BNN
F 1 "60Hz" H 3050 5450 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3050 5200 50  0001 C CNN
F 3 "" H 3050 5200 50  0001 C CNN
	1    3050 5200
	1    0    0    -1  
$EndComp
$Comp
L TEST TP5
U 1 1 5A985557
P 3050 5800
F 0 "TP5" H 3050 6100 50  0000 C BNN
F 1 "300Hz" H 3050 6050 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 3050 5800 50  0001 C CNN
F 3 "" H 3050 5800 50  0001 C CNN
	1    3050 5800
	1    0    0    -1  
$EndComp
$Comp
L TEST TP8
U 1 1 5A9855C4
P 7350 2050
F 0 "TP8" H 7350 2350 50  0000 C BNN
F 1 "Clki" H 7350 2300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 7350 2050 50  0001 C CNN
F 3 "" H 7350 2050 50  0001 C CNN
	1    7350 2050
	1    0    0    -1  
$EndComp
$Comp
L TEST TP12
U 1 1 5A98575C
P 10000 2300
F 0 "TP12" H 10000 2600 50  0000 C BNN
F 1 "LED1" H 10000 2550 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 10000 2300 50  0001 C CNN
F 3 "" H 10000 2300 50  0001 C CNN
	1    10000 2300
	0    -1   -1   0   
$EndComp
$Comp
L TEST TP11
U 1 1 5A987EB7
P 9700 2850
F 0 "TP11" H 9700 3150 50  0000 C BNN
F 1 "LED2" H 9700 3100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 9700 2850 50  0001 C CNN
F 3 "" H 9700 2850 50  0001 C CNN
	1    9700 2850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR04
U 1 1 5A988189
P 10000 1800
F 0 "#PWR04" H 10000 1650 50  0001 C CNN
F 1 "+12V" H 10000 1940 50  0000 C CNN
F 2 "" H 10000 1800 50  0001 C CNN
F 3 "" H 10000 1800 50  0001 C CNN
	1    10000 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A98930E
P 7700 2550
F 0 "#PWR05" H 7700 2300 50  0001 C CNN
F 1 "GND" H 7700 2400 50  0000 C CNN
F 2 "" H 7700 2550 50  0000 C CNN
F 3 "" H 7700 2550 50  0000 C CNN
	1    7700 2550
	1    0    0    -1  
$EndComp
$Comp
L TEST TP9
U 1 1 5A989BDD
P 8050 2050
F 0 "TP9" H 8050 2350 50  0000 C BNN
F 1 "Clko" H 8050 2300 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8050 2050 50  0001 C CNN
F 3 "" H 8050 2050 50  0001 C CNN
	1    8050 2050
	1    0    0    -1  
$EndComp
Text Notes 10750 7100 0    60   ~ 12
SPFMDBC
Text Notes 2850 3250 0    60   ~ 0
4mA
Text Notes 9300 2850 0    60   ~ 0
20mA
$Comp
L TEST TP10
U 1 1 5A98FAD1
P 8750 2850
F 0 "TP10" H 8750 3150 50  0000 C BNN
F 1 "Udrain" H 8750 3100 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8750 2850 50  0001 C CNN
F 3 "" H 8750 2850 50  0001 C CNN
	1    8750 2850
	1    0    0    -1  
$EndComp
$Comp
L LED_ALT D2
U 1 1 5A995E65
P 10000 2550
F 0 "D2" H 10000 2650 50  0000 C CNN
F 1 "White Sideemitting" H 10250 2400 50  0000 C CNN
F 2 "LEDs_Side_Emitting:LED_215" H 10000 2550 50  0001 C CNN
F 3 "" H 10000 2550 50  0001 C CNN
F 4 "Xiasongxin" H 10000 2550 60  0001 C CNN "Manufacturer"
F 5 "215 White SMD LED 2.8*1,2*0,8mm" H 10000 2550 60  0001 C CNN "Partnummer"
	1    10000 2550
	0    -1   -1   0   
$EndComp
$Comp
L BAT54A D5
U 1 1 5AB7E98D
P 3750 5650
F 0 "D5" H 3550 5800 50  0000 L CNN
F 1 "BAT54A" H 3700 5800 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3825 5775 50  0001 L CNN
F 3 "" H 3630 5650 50  0001 C CNN
	1    3750 5650
	0    -1   -1   0   
$EndComp
$Comp
L BAT54A D4
U 1 1 5AB7EA36
P 3750 4900
F 0 "D4" H 3550 5050 50  0000 L CNN
F 1 "BAT54A" H 3700 5050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3825 5025 50  0001 L CNN
F 3 "" H 3630 4900 50  0001 C CNN
	1    3750 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 3650 4050 5850
Connection ~ 4050 3750
Wire Wire Line
	4050 3150 4050 3350
Connection ~ 4050 3250
Wire Wire Line
	3250 3650 3250 3750
Wire Wire Line
	1500 3150 1500 3300
Wire Wire Line
	1500 3250 2500 3250
Connection ~ 1500 3250
Wire Wire Line
	3250 3250 3250 3350
Connection ~ 3250 3250
Wire Wire Line
	2950 4600 3750 4600
Wire Wire Line
	2950 5200 3750 5200
Wire Wire Line
	1500 3700 1500 3750
Wire Wire Line
	1500 3750 2400 3750
Wire Wire Line
	2400 3750 2400 5800
Wire Wire Line
	2400 5800 2550 5800
Wire Wire Line
	2550 5200 2400 5200
Connection ~ 2400 5200
Wire Wire Line
	2550 4600 2400 4600
Connection ~ 2400 4600
Wire Wire Line
	3500 4400 7250 4400
Wire Wire Line
	7250 4400 7250 3750
Wire Wire Line
	7250 3750 6900 3750
Wire Wire Line
	3400 4300 7150 4300
Wire Wire Line
	7150 4300 7150 3450
Connection ~ 3400 5200
Wire Wire Line
	7050 3350 7050 4200
Wire Wire Line
	7050 4200 3300 4200
Connection ~ 3300 4600
Wire Wire Line
	10000 2200 10000 2400
Wire Wire Line
	10000 2850 10000 2700
Wire Wire Line
	9250 2850 10000 2850
Wire Wire Line
	10000 1800 10000 1900
Wire Wire Line
	7550 2050 7350 2050
Wire Wire Line
	7350 2050 7350 3550
Wire Wire Line
	7350 3550 6900 3550
Wire Wire Line
	7850 2050 8050 2050
Wire Wire Line
	7350 2450 7450 2450
Connection ~ 7350 2450
Wire Wire Line
	7650 2450 7750 2450
Wire Wire Line
	7700 2550 7700 2450
Connection ~ 7700 2450
Wire Wire Line
	8050 2450 7950 2450
Connection ~ 8050 2450
Connection ~ 3050 4600
Connection ~ 3050 5200
Connection ~ 3050 5800
Connection ~ 1850 3750
Connection ~ 1850 3250
Connection ~ 7350 2050
Connection ~ 8050 2050
Connection ~ 10000 2300
Connection ~ 9700 2850
Connection ~ 8750 2850
Connection ~ 3600 3250
Connection ~ 3600 3750
Wire Wire Line
	2800 3250 4200 3250
Wire Wire Line
	3250 3750 4200 3750
Wire Wire Line
	3300 4200 3300 4600
Wire Wire Line
	3400 4300 3400 5200
Wire Wire Line
	3750 5350 3500 5350
Connection ~ 3500 5350
Wire Wire Line
	3500 5800 2950 5800
Wire Wire Line
	3500 4400 3500 5800
Wire Wire Line
	3950 5650 4050 5650
Connection ~ 4050 5650
Wire Wire Line
	3950 4900 4050 4900
Connection ~ 4050 4900
NoConn ~ 3750 5950
Wire Wire Line
	7450 3650 7450 2850
Wire Wire Line
	7450 2850 8050 2850
Wire Wire Line
	7450 3650 6900 3650
Wire Wire Line
	8050 2850 8050 2050
$Comp
L TEST TP13
U 1 1 5AB80915
P 8150 3250
F 0 "TP13" H 8150 3550 50  0000 C BNN
F 1 "PWMout" H 8150 3500 50  0000 C CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Small" H 8150 3250 50  0001 C CNN
F 3 "" H 8150 3250 50  0001 C CNN
	1    8150 3250
	1    0    0    -1  
$EndComp
$Comp
L BSS138 Q1
U 1 1 5AB80C45
P 8450 3250
F 0 "Q1" H 8650 3325 50  0000 L CNN
F 1 "BSS138" H 8650 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8650 3175 50  0001 L CIN
F 3 "" H 8450 3250 50  0001 L CNN
	1    8450 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5AB80EA5
P 8550 3550
F 0 "#PWR06" H 8550 3300 50  0001 C CNN
F 1 "GND" H 8550 3400 50  0000 C CNN
F 2 "" H 8550 3550 50  0000 C CNN
F 3 "" H 8550 3550 50  0000 C CNN
	1    8550 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3550 8550 3450
Connection ~ 8150 3250
Wire Wire Line
	8550 3050 8550 2850
Wire Wire Line
	8550 2850 8950 2850
Wire Wire Line
	7150 3450 6900 3450
Wire Wire Line
	6900 3350 7050 3350
Wire Wire Line
	6900 3250 8250 3250
$EndSCHEMATC
