/***************************************************************************
 * Strobe-Torch
 * (c) 2018 Christoph Zimmermann
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA
 * 02111-1307, USA.
 *
 * Written by Christoph Zimmermann <nuess0r@pdproject.org>, 2018.
 *
 ***************************************************************************
 * Fuse bit configuration:
 *   Ext. Crystal Osc.; Frequency 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms; [CKSEL=1100 SUT=00]
 *   Clock output on PORTB4 disabled; [CKOUT=0]
 *   Divide clock by 8 internally enabled; [CKDIV8=0]
 *   Brown-out detection disabled; [BODLEVEL=111]
 *   Debug Wire disabled; [DWEN=0] *
 *   Preserve EEPROM memory through the Chip Erase cycle disabled; [EESAVE=0]
 *   Reset Disabled (Enable PB5 as i/o pin); [RSTDISBL=0] *
 *   Serial program downloading (SPI) disabled; [SPIEN=0] *
 *   Watch-dog Timer disabled; [WDTON=0]
 *   Self Programming disabled; [SELFPRGEN=0]
 *   AVRDUDE_FUSEBITS = -U hfuse:w:0x5F:m -U lfuse:w:0x4C:m -U efuse:w:0xFF:m
 *
 * Lock bit configuration:
 *   Mode 3: Further programming and verification disabled
 *   AVRDUDE_LOCKBITS = -V -U lock:w:0xFC:m
 *
 ***************************************************************************/

#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

#include <avr/io.h>
#include <avr/sleep.h>

typedef enum {MODE_50HZ, MODE_60HZ, MODE_300HZ, MODE_FALSE} mode_t;


/************ Device specific definitions ****/

/* Pinning of the buttons to the input pins (all on Port B)
 * 50 Hz    Pin 2
 * 60 Hz    Pin 0
 * 300 Hz   Pin 5 */
#define BTN_50HZ  2
#define BTN_60HZ  0
#define BTN_300HZ 5

/* The LED is connected to Port B, Pin 1 (OC1A) */
#define PWM_OUT   1

typedef enum {PWM_50HZ = 24, PWM_60HZ = 20, PWM_300HZ = 8, PWM_FALSE = 0} compare_value_t;


/************ Device specific functions ****/

inline void init() {
    
    /* Clock Prescaler Change Enable */
    CLKPR = 0x80;
    /* Set clock prescaler to 256
     *   This sets the Frequency to 4.9152 MHz/256 = 19.2 kHz */
    CLKPR = 0x08;
    
    /* Initialize the timer/counter 1
     *   Clear Timer/Counter on Compare Match (CTC1 = 1)
     *   Pulse Width Modulator A Enable (PWM1A = 0)
     *   Comparator A mode set to toggle the OC1A output line (COM1A1, COM1A0 = 01)
     *   Set Timer 1 prescaler to 8 (CS13...CS10 = 0100)
     */
    TCCR1 = 0x94; /* 10010100 */
    
    /* activate internal pull-up resistors */
    PORTB |= (1 << BTN_50HZ) | (1 << BTN_60HZ) | (1 << BTN_300HZ);
    /* Set PWM pin as output */
    DDRB = (1 << PWM_OUT);
}

/* Reads the buttons and returns the according operating mode.
 *   If more than one button is pressed return value is MODE_FALSE
 */
inline mode_t read_buttons() {
    mode_t mode;
    bool btn_pressed = false;
    
    /* Buttons are low-active */
    if(bit_is_clear(PINB,BTN_50HZ)) {
	mode = MODE_50HZ;
	btn_pressed = true;
    }
    if(bit_is_clear(PINB,BTN_60HZ)) {
	mode = MODE_60HZ;
	btn_pressed = true;
    }
    if(bit_is_clear(PINB,BTN_300HZ)) {
	mode = MODE_300HZ;
	btn_pressed = true;
    }
    
    if(btn_pressed == false) {
	return mode;
    }
    else {
	return MODE_FALSE;
    }
}

inline void set_pwm(compare_value_t compare_value) {
    /* Set Timer/Counter1 Output Compare Register A */
    OCR1A = compare_value;
}


/*********************** Main app **********/
int main(void) {
    mode_t button_pressed;
    
    init();
    button_pressed = read_buttons();
    
    switch(button_pressed) {
    case (MODE_50HZ):
        set_pwm(PWM_50HZ);
    break;
    case (MODE_60HZ):
        set_pwm(PWM_60HZ);
    break;
    case (MODE_300HZ):
        set_pwm(PWM_300HZ);
    break;
    default:
        /* More than one button pressed. */
        set_pwm(PWM_FALSE);
    }
    /* Do nothing and go to sleep mode to save battery power */
    sleep_enable();
    sleep_bod_disable();
    sleep_cpu();
}
