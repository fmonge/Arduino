;	 7 segmentos - avr - atmel 328p - arduino uno r3
;	Fabián Monge 

#define cero 	0b11111110
#define uno 	0b01100000
#define dos 	0b11011010
#define tres 	0b11110010
#define cuatro 0b
#define cinco 	0b
#define seis 	0b

.section bss:

.macro	setNun
	out 	0x0b, @0
	out	0x0a, @0
.endmacro

;.section .data:

			
.org 0x0000
	rjmp	start


start:

	clr	r20
	ldi	r20, 0b10000000
	clr 	r15
loop:
	;ser	r16

	out		0x0B, r20
	out		0x0A, r20
	lsr		r20
	cpi		r20, 0b00000001
	breq		start
	call 		pausa1	
	setNum cero
	call pausa1
 	call loop


main:
	rjmp 	main

pausa1:
	ldi		r16, 0x09
	ldi		r17, 0x00
	ldi		r18, 0x00

ciclo_1:
	nop
	cpi		r18, 0x00
	breq	ciclo_2
	dec		r18
	jmp		ciclo_1

ciclo_2:
	cpi		r17, 0x00
	breq	ciclo_3
	dec		r17
	ldi		r18, 0xFF
	jmp		ciclo_1

ciclo_3:
	cpi		r16, 0x00
	breq	ciclo_fin
	dec		r16
	ldi		r17, 0xFF
	ldi		r18, 0xFF
	jmp		ciclo_1

ciclo_fin:
	nop

	ret
