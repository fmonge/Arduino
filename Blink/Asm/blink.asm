;	Blink de 5 LEDs - asm para avr
;	Fabián Monge @fmonge
;	Wilberth Chaves @wilberthch


.org 0x0000
	rjmp	start

start:

	clr		r20
	ldi		r20, 0b10000000

	clr 		r15

loop:
	;ser	r16
	out		0x0b, r20	  ; mode out
	out		0x0A, r20		;write 1
	lsr		r20
	cpi		r20, 0b0000100 ;  
	breq		start
	call 		pausa1

 	call loop


main:
	rjmp 	main

pausa1:
	ldi		r16, 0x22
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
