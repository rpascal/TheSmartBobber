#ifndef COUNTER
#define COUNTER

void Counter_Initialize(void);
void turnOffCounter(void);
void interrupt(void);
double getClock();
double timeEllapsed(double);

#endif