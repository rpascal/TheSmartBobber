#include "defines.h"
#include "counter.h"


double dummyClock = 0;

void Counter_Initialize(void){
    
}

double getClock(){
    return ++dummyClock;
}

double timeEllapsed(double past){
    return getClock()-past;
}
