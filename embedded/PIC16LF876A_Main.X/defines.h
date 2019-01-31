#ifndef DEFINES
#define DEFINES

//#define NO_INPUT "a"
const char NO_INPUT  = "-1";


#define _XTAL_FREQ 4000000


/*
 * Ds18b20 Commands
 */

#define skip_rom 0xCC
#define	convert_temp 0x44 
#define	write_scratchpad 0x4E
#define	resolution_12bit 0x7F
#define read_scratchpad 0xBE

#define DQ PORTCbits.RC3 
#define DQ_TRIS TRISCbits.TRISC3

/*
 * UART Commands
 */
const char END_DELIMETER = '&';
const char TEMP_DELIMETER = '#';
const char BITE_DELIMETER = '@';
#define Baud_rate 9600

/* State Enums */

typedef enum connectionStates {
    DISCONNECTED,
    CONNECTED
};
enum connectionStates connectionState;


enum UART_INPUT_STATES {
    TEMPERATURE,
    LED_ON,
    LED_OFF,
    NO_INPUT
};
enum UART_INPUT_STATES UART_INPUT_STATE;


#endif