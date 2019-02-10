#ifndef ADC
#define ADC

void ADC_Initialize(void);
unsigned int ADC_Read(void);
void monitorSolenoidSignal(void);
void sendADCToPhone(void);
void solenoidActiveMonitor(void);
void turnOnSolenoid(void);
//unsigned int ADC_Read();

#endif