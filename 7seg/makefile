#all:led.asm
#	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o led.o led.asm
#	avr-gxx -mmcu=atmega328p led.o -o led
#	avr-objcopy -O ihex -R .eeprom hola hola.hex


asm:blink.asm
	avr-as -mmcu=atmega328p blink.asm -o blinkASM.o 
	avr-ld blinkASM.o -o blinkASM
	avr-objcopy -O ihex -R .eeprom blinkASM blinkASM.hex
	avrdude -F -V -c arduino -p m328 -P /dev/ttyUSB0 -b 115200 -U flash:w:blinkASM.hex
	#avrdude -F -V -c arduino -p m328 -P /dev/ttyACM0 -b 115200 -U flash:w:blinkASM.hex

c:led.c
	vr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o led.o led.c
	avr-gcc -mmcu=atmega328p led.o -o led
	avr-objcopy -O ihex -R .eeprom led led.hex
	avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyACM0 -b 115200 -U flash:w:led.hex
 
