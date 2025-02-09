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
 *   - Production setting with 60 Hz mode and disabled reset input
 *   Ext. Crystal Osc.; Frequency 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms; [CKSEL=1100 SUT=00]
 *   Clock output on PORTB4 disabled; [CKOUT=0]
 *   Divide clock by 8 internally enabled; [CKDIV8=0]
 *   Brown-out detection disabled; [BODLEVEL=111]
 *   Debug Wire disabled; [DWEN=1] * (only during development)
 *   Preserve EEPROM memory through the Chip Erase cycle disabled; [EESAVE=0]
 *   Reset Disabled (Enable PB5 as i/o pin); [RSTDISBL=0] *
 *   Serial program downloading (SPI) enabled; [SPIEN=0] *
 *   Watch-dog Timer disabled; [WDTON=0]
 *   Self Programming disabled; [SELFPRGEN=0]
 *   AVRDUDE_FUSEBITS = -U hfuse:w:0x5F:m -U lfuse:w:0x4C:m -U efuse:w:0xFF:m

 *   - Development setting without 60 Hz mode (two button only) and enabled reset input (reprogramming possible)
 *   Ext. Crystal Osc.; Frequency 3.0-8.0 MHz; Start-up time PWRDWN/RESET: 258 CK/14 CK + 4.1 ms; [CKSEL=1100 SUT=00]
 *   Clock output on PORTB4 disabled; [CKOUT=0]
 *   Divide clock by 8 internally enabled; [CKDIV8=0]
 *   Brown-out detection disabled; [BODLEVEL=111]
 *   Debug Wire disabled; [DWEN=1] * (only during development)
 *   Preserve EEPROM memory through the Chip Erase cycle disabled; [EESAVE=0]
 *   Reset Disabled (Enable PB5 as i/o pin); [RSTDISBL=0] *
 *   Serial program downloading (SPI) enabled; [SPIEN=0] *
 *   Watch-dog Timer disabled; [WDTON=0]
 *   Self Programming disabled; [SELFPRGEN=0]
 *   AVRDUDE_FUSEBITS = -U hfuse:w:0xDF:m -U lfuse:w:0x4C:m -U efuse:w:0xFF:m
 *
 * Lock bit configuration:
 *   Mode 3: Further programming and verification disabled
 *   AVRDUDE_LOCKBITS = -V -U lock:w:0xFC:m
 *
 ***************************************************************************/

#include <stdlib.h>
#include <stdint.h>

#include <avr/io.h>
#include <avr/sleep.h>
#include <avr/power.h>

typedef enum {MODE_50HZ, MODE_60HZ, MODE_300HZ, MODE_FALSE} mode_t;

/************ Device specific definitions ****/

/* Pinning of the buttons to the input pins (all on Port B) */
#define BTN_50HZ  1
#define BTN_60HZ  5
#define BTN_300HZ 2

/* The LED is connected to Port B, Pin 1 (OC1A) */
#define PWM_OUT   0

/* The frequency of the PWM will be Timer Clock 1 Frequency divided by (OCR1C value + 1). See the
 * equation in the data sheet, page 87.
 *
 * The actual LED frequency is 4.9152 MHz/256/8/(x+1), x =
 *   23 = 100 Hz
 *   19 = 120 Hz
 *    3 = 600 Hz */
typedef enum {PWM_50HZ = 23, PWM_60HZ = 19, PWM_300HZ = 3} compare_value_t;


/************ Device specific functions ****/

static inline void init() {
     /* Power Reduction Register
      *   Bit 3 – PRTIM1: Power Reduction Timer/Counter1 disabled
      *   Bit 2 – PRTIM0: Power Reduction Timer/Counter0 enabled
      *   Bit 1 – PRUSI: Power Reduction USI enabled
      *   Bit 0 – PRADC: Power Reduction ADC enabled */
    PRR = 0x07;

    /* Set clock prescaler to 256
     *   This sets the Frequency to 4.9152 MHz/256 = 19.2 kHz */
    clock_prescale_set(0x08);

    /* Activate internal pull-up resistors */
    PORTB |= (1 << BTN_50HZ) | (1 << BTN_60HZ) | (1 << BTN_300HZ);

    /* Set PWM pin as output */
    DDRB = (1 << PWM_OUT);
}

/* Reads the buttons and returns the according operating mode.
 *   If more than one button is pressed return value is MODE_FALSE */
static inline mode_t read_buttons() {
    mode_t mode;
    uint8_t btn_pressed = 0;

    /* Buttons are low-active */
    /* Read first the button connected to the (later) disabled reset input
     * If the reset input is still active this pin will always read 0 --> read this and then
     * it gets overwritten by other buttons */
    if((PINB  & (1 << BTN_60HZ)) == 0) {
        mode = MODE_60HZ;
        btn_pressed++;
    }
    if((PINB  & (1 << BTN_50HZ)) == 0) {
        mode = MODE_50HZ;
        btn_pressed++;
    }
    if((PINB  & (1 << BTN_300HZ)) == 0) {
        mode = MODE_300HZ;
        btn_pressed++;
    }

    if(btn_pressed >= 1) {
        return mode;
    }
    else {
        return MODE_FALSE;
    }
}

static inline void set_pwm(compare_value_t compare_value) {
    /* Initialize the timer/counter 1
     *   Clear Timer/Counter on Compare Match (CTC1 = 1)
     *   Pulse Width Modulator A enabled (PWM1A = 1)
     *   Comparator A mode set to toggle both the normal and inverted OC1A output line (COM1A1, COM1A0 = 01)
     *   Set Timer 1 prescaler to 8 (CS13...CS10 = 0100)
     */
    TCCR1 = (1<<CTC1) | (1<<PWM1A) | (1<<COM1A0) | (1<<CS12);

    /* Set maximum for Timer/Counter1 */
    OCR1C = compare_value;
    OCR1A = (compare_value >> 1);
}


/*********************** Main app **********/
int main(void) {
    mode_t button_pressed;

    init();

    do {
        button_pressed = read_buttons();
    }
    while(button_pressed == MODE_FALSE);

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
    break;
    }

    /* Do nothing and go to sleep mode to save battery power */
    sleep_enable();
    sleep_cpu();
}

