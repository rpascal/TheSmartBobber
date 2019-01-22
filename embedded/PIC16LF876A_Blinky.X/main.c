/*
 * File:   main.c
 * Author: NCS
 *
 * Blinky LED
 */

#include <xc.h>
#include "config.h"
#define _XTAL_FREQ 4000000

void main(void) {
   
   // Configure Pin 28 To Be Output Pins
  TRISC3 = 0;
   
   // The Main Infinite Loop OF The System
   while(1)
   {
    // Flash LED1
    RC3 = 1;
//    __delay_ms(100);
//    RB5 = 0;
//    __delay_ms(100);
    }
    return;
}
