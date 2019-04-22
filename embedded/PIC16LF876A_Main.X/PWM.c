#include "defines.h"
#include "PWM.h"

//***Seting Duty Cycle of PWM***///
void PWM1_Set_Duty(unsigned int DC)
{
  if(DC<1024)
  {
    CCP1Y = DC & 1;
    CCP1X = DC & 2;
    CCPR1L = DC >> 2;
  }
}

//***Initialization of PWM***///
void PWM_Initialize(void)
{
  //Put Module in PWM Mode
  CCP1M3 = 1;
  CCP1M2 = 1;
  
  //Set RC2 as PWM Pin
  TRISC2 = 0; 
  
  //Set The PWM Frequency of 8kHz
  PR2 = 124; 
  
  //Timer2 (1:4 Ratio)
  T2CKPS0 = 0;
  T2CKPS1 = 0;
  
  // Start PWM Signal with TIMER 2
  TMR2ON = 1; 
  
  //Call PWM Duty Cycle Funciton with value
  PWM1_Set_Duty(400);//Set duty cycle to 80% 
}