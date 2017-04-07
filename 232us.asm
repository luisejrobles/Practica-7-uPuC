/*
	UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA
	Microcontroladores y MicroProcesadores

	Jiménez Robles Luis Eduardo
			01208396

	Programa de un retardo de 323us o 3744 ciclos
*/
;------------- definiciones e includes ------------------------------
.equ INIT_VALUE = 0x01 ; Port C
.equ CONFIG_PORT = 0xff ; Direction register 123 Port is DDRC

;------------- init PORTS -------------------------------------------
	/*
	ldi R24,CONFIG_PORT
	out DDRC,R24
	ldi R24,INIT_VALUE
	*/
;------------- main loop -------------------------------------------
;next:
 	ldi R16,123			;1
	nop					;1
	nop 				;1
	nop					;1
	nop					;1
	r232:
		ldi R17, 10		;n			
		dec R16	 		;n
		nop				;n
		
		label1:
			dec R17 	;m*n
			brne label1	;2m-1 *n 
						
		brne r232		;2n-1		
						;TOTAL: 3n+ mn + 2mn - n + 2n - 1 +5 + 10
						;TOTAL  4n + 3mn - 14


						
		

	/*;**** Retardo ****
	out PORTC,R24
	rol R24
	jmp next*/
;--------------------------------------------------------------------
