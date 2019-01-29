/*
 * File:   main.c
 * Author: NCS
 *
 * PWM
 */
#include <xc.h>
#include "config.h"
#define _XTAL_FREQ 4000000

//void PWM1_Set_Duty(uint16_t);

//--[ Duty Cycle % Input Function ]--
void PWM1_Set_Duty(unsigned int DC)
{
  // Check The DC Value To Make Sure it's Within 10-Bit Range
  if(DC<1024)
  {
    CCP1Y = DC & 1;
    CCP1X = DC & 2;
    CCPR1L = DC >> 2;
  }
}

void PWM_Initialize(void)
{
   //--[ Configure The CCP Module For PWM Mode ]--
  //CPP in PWM Mode
  CCP1M3 = 1;
  CCP1M2 = 1;
  // The CCP1 Output Pin (PWM) [RC2]
  TRISC2 = 0; 
  // Set The PWM Frequency of 8kHz
  PR2 = 124; 
  // Set The PS For Timer2 (1:1 Ratio)
  T2CKPS0 = 0;
  T2CKPS1 = 0;
  // Start CCP1 PWM
  TMR2ON = 1;
  //--[ End of Configuration ]--

  //--[ Set Duty Cycle to 50% ]--
  //uint16_t DC=0; //Initialize uint16_t
  PWM1_Set_Duty(250);//Set duty cycle to 50% 
}
 
void main(void) 
{
  PWM_Initialize();  //This sets the PWM frequency of PWM1
  //--[ Main loop ]--
  while (1)
  {
    NOP();
  }
  return;
}