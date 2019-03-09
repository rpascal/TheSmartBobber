#include "defines.h"
#include "UART.h"
#include "ds18b20.h"
#include "counter.h"


/*
 * Delay functions for RC3
 */
int previousTemp = -999;
//us Delay

void delay_us(int useconds) {
    int s;
    for (s = 0; s < useconds; s++);
}

//ms Delay

void delay_ms(int j) {
    unsigned char i;
    for (; j; j--)
        for (i = 122; i <= 0; i--);
}

/*
 * RESET Pulse for 1-Wire
 */

unsigned char ow_reset(void) {
    DQ_TRIS = 0; // Set RC3 to Output
    DQ = 0; // Set RC3 LOW
    __delay_us(480); // 1-wire required delay
    DQ_TRIS = 1; // Set RC3 HIGH
    __delay_us(60); // 1-wire required delay
    if (DQ == 0) // If there is a presence pluse
    {
        __delay_us(480);
        return 0; // 1-wire is present
    } else { // If there is NOT a prensence pulse
        __delay_us(480);
        return 1; // 1-wire is NOT present
    }
}

/*
 * Communication Functions for 1-Wire Protocol
 * Refer to Data Sheet for commands  
 */

//Read Transmission bits from Temp Sensor

unsigned char read_bit(void) {
    unsigned char i;
    DQ_TRIS = 1; //Set RC
    DQ = 0; // pull DQ low to start timeslot
    DQ_TRIS = 1;
    DQ = 1; // then return high
    for (i = 0; i < 3; i++); // delay 15us from start of timeslot
    return (DQ); // return value of DQ line
}

//Read Transmission bytes from Temp Sensor 

unsigned char read_byte(void) {
    char i, result = 0;
    DQ_TRIS = 1; // TRIS is input(1)
    for (i = 0; i < 8; i++) {
        DQ_TRIS = 0; // Set RC3 as Output
        DQ = 0; // Set RC3 Low 
        __delay_us(2); //Keep RC3 LOW for 2us
        DQ_TRIS = 1; // Set RC3 as Input
        if (DQ != 0) // if Bit is 1 
            result |= 1 << i;
        __delay_us(60); // wait for recovery time
    }
    return result;
}

void write_bit(char bitval) {
    DQ_TRIS = 0;
    DQ = 0; // pull DQ low to start timeslot
    if (bitval == 1) DQ = 1; // return DQ high if write 1
    __delay_us(5); // hold value for remainder of timeslot
    DQ_TRIS = 1;
    DQ = 1;
}// Delay provides 16us per loop, plus 24us. Therefore delay(5) = 104us

void write_byte(char val) {
    char i;
    DQ_TRIS = 1; // set pin# to input (1)

    for (i = 0; i < 8; i++) {
        if ((val & (1 << i)) != 0) {
            // write 1
            DQ_TRIS = 0; // set pin# to output (0)
            DQ = 0; // set pin# to low (0)
            __delay_us(1); // 1 wire require time delay
            DQ_TRIS = 1; // set pin# to input (release the bus)
            __delay_us(60); // 1 wire require time delay
        } else {
            //write 0
            DQ_TRIS = 0; // set pin# to output (0)
            DQ = 0; // set pin# to low (0)
            __delay_us(60); // 1 wire require time delay
            DQ_TRIS = 1; // set pin# to input (release the bus)
        }
    }

}

/*
 * Initialize ds18b20 and set 12-bit resolution
 */

void ds18b20_Initialize(void) {
    ow_reset();
    write_byte(write_scratchpad);
    write_byte(0);
    write_byte(0);
    write_byte(resolution_12bit);
}

void broadcastTempValue(void) {
    int getTimer = (int) getCounter();
    if (getTimer % 60 != 0) {
        return;
    }
    int temp = read_temp();
    if (temp != previousTemp) {
        sendTemp(temp);
    }
    previousTemp = temp;
}

void sendTemp(int temp) {
    if (temp != -999 && temp < 100) {
        char str[40];
        sprintf(str, "%d", temp);
        UART_send_temp(str);
    }
}

//***Function to read temp data***//

unsigned int read_temp(void) {
    if (ow_reset() == 1) {
        UART_send_string("Temp. NOT connected");
        UART_send_char(10);
        return -999;
    }

    unsigned short TempL, TempH;
    int temp = 0;
    char str[30];

    ow_reset();
    write_byte(skip_rom);
    write_byte(convert_temp);

    while (read_byte() == 0xff)
        ;
    __delay_ms(500);

    ow_reset();

    write_byte(skip_rom);
    write_byte(read_scratchpad);

    TempL = read_byte();
    TempH = read_byte();

    temp = ((unsigned int) TempH << 8) + (unsigned int) TempL; //put both value in one variable
    temp = temp / 16; //calculations used from the table provided in the data sheet of ds18b20

    return temp;
    //i = 0; //I think I need this?

    /*This is for Negative temperature*/


    //		if((TempH & 0x80)!=0)
    //        {    // If condition will execute as TempH = 1111 1111 & 1000 0000 = 1000 0000. 
    //			t=TempH;// Store tempH value in t = 1111 1111  .
    //	        t<<=8;//after bitwise left shift 8 times value in t will be 1111 1111 0000 0000.  
    //	        t=t|TempL;// t = 1111 1111 0000 0000 | 0101 1110 [ result t = 1111 1111 0101 1110] 
    //	        t=t-1;//t = t-1 in this case t = 1111 1111 0101 1101.
    //	        t=~t;// t = 0000 0000 1010 0010.
    //	        t>>=4;// t = 0000 0000 0000 1010.
    //			t=t*100;// t = 10 * 100 = 1000.
    //			t2=TempL; //Store tempL value = 0101 1110.
    //			t2=t2-1;// t2= 0101 1101
    //	        t2=~t2;//t2 = 1010 0010
    //	        t2=t2&0x0f;// t2 = 1010 0010 | 0000 1111 = 0000 0010
    //			t2=t2 * 6.25; // 0000 00010 = 2 x 6.25 = 12.50
    //			i=((unsigned int)t ) + (unsigned int)t2; //put both value in one variable 1000 + 12.5 = 1012.5
    //		
    //
    //		}
    /*This is for positive Temperature*/
}