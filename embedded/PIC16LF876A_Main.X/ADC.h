#ifndef ADC
#define ADC

void ADC_Initialize(void);
unsigned int ADC_Read(void);

void monitorSolenoidSignal(void);
void sendADCToPhone(void);
void isSolenoidOnMonitor(void);
void turnOnSolenoid(void);

#endif