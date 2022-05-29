# Example programs for Arduino systems

## Arduino systems

These demo programs show Arduino hardware features in BASIC, mainly for the standalone systems in https://github.com/slviajero/tinybasic/wiki. 

## Programs 

### Just a plain Arduino board

This runs on all board with a buildin LED. An Arduino UNO would be fine. Compile the interpreter with #define BASICINTEGER for the full language set with integer.

- HelloWorld: hello.bas - the inevitable hello world program
- Blink: blink.bas - blinking with the buildin LED
- Minmax: minmax.bas - reading data, calculating minimum and maximum
- EEPROM: eeprom.bas - storing data in the EEPROM

### The LCD shield

- Shield: shield.bas - keypad and display functions of the LCD shield
- Dispbuf: dispbuf.bas - move and object around on the display



## BASIC language features 

hello.bas: the PRINT statement

blink.bas: Arduinio I/O basics PINM, DELAY, LED and DWRITE

minmax.bas: Reading an analog input with AREAD, the AZERO constant

eeprom.bas - the @E() array to store data

shield.bas - cursor vars @X, @Y, I/O stream &2, GET, PUT

dispbuf.bas - the @D() display buffer array, ASCII values of the keys