/*
 * File:   main.c
 * Author: zpyle
 *
 * Created on January 24, 2019, 2:47 PM
 */


#include <xc.h>
#include <stdint.h>
#include "config.h"
#define _XTAL_FREQ 4000000
//================================
void PWM1_Set_Duty(uint16_t);
 
void main(void) 
{
  //--[ Configure The CCP Module For PWM Mode ]--
  CCP1M3 = 1;
  CCP1M2 = 1;
  TRISC2 = 0; // The CCP1 Output Pin (PWM)
  // Set The PWM Frequency
  PR2 = 124;
  // Set The PS For Timer2 (1:4 Ratio)
  T2CKPS0 = 1;
  T2CKPS1 = 0;
  // Start CCP1 PWM !
  TMR2ON = 1;
 
  uint16_t DC=0; 
  // Write The System's Main Routine
  while(1)
  {
    DC = 0; // Start With 0% DutyCycle
    PWM1_Set_Duty(DC);
    __delay_ms(100);
    DC = 500;
    PWM1_Set_Duty(DC);
    __delay_ms(100);
  }
  return;
}
 
void PWM1_Set_Duty(uint16_t DC)
{
  // Check The DC Value To Make Sure it's Within 10-Bit Range
  if(DC<1024)
  {
    CCP1Y = DC & 1;
    CCP1X = DC & 2;
    CCPR1L = DC >> 2;
  }
}