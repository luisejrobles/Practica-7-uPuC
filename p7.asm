/*
	UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA
	Microcontroladores y MicroProcesadores

	Jiménez Robles Luis Eduardo
			01208396

	Programa de un retardo de 234us, 5ms y 666ms
*/
;------------- definiciones e includes ------------------------------
inicio:
	;call ret234us
	;call ret5ms
	call ret666ms
	nop

rjmp inicio

ret234us:
 	ldi R16,0xa			;1
	nop					;1
	nop 				;1
	nop					;1
	nop					;1
	r232:
		ldi R17,0x7b	;n			
		nop				;n	
		label1:
			dec R17 	;m*n	
		brne label1		;2m-1 *n 					
	dec R16	 			;n
	brne r232			;2n-1		
						;TOTAL: 5+3n+mn+2mn-n+2n-1+10
						;TOTAL  4n+3mn+14
	ret

ret5ms:
	ldi R16,0xBE		;1
	r55:
		ldi R17,0x8B	;n			
		nop				;n
		label51:
			dec R17 	;m*n
			brne label51;2m-1 *n 		
		dec R16	 		;n
		brne r55		;2n-1		
						;TOTAL: 1+2n+mn+2mn-n+n+2n-1+10
						;TOTAL: 4n+3mn+10
	ret

ret666ms:
	ldi R16,0x76			;1
	r666:
		ldi R17,0x8C		;n			
		nop					;n
		nop					;n
		label16:
			ldi R18,0xD6	;mn
			
			label21:
				dec R18		;mno
				brne label21;2o-1*mn
			dec R17 		;m*n
			brne label16	;2m-1*n 
		dec R16	 			;n		
		brne r666			;2n-1	
			
							;TOTAL: 1+3n+mn+mno+2mno-mn+mn+2mn-n+n+2n-1+10
							;TOTAL: 5n+3mn+3mno+10
	ret

						
