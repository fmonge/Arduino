arduino:led.c
	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o led.o led.c
	avr-gcc -mmcu=atmega328p led.o -o led
	avr-objcopy -O ihex -R .eeprom led led.hex
	#avrdude -F -V -c arduino -p m328 -P /dev/ttyACM0 -b 115200 -U flash:w:led.hex
	avrdude -F -V -c arduino -p m328 -P /dev/ttyUSB0 -b 115200 -U flash:w:led.hex

