/*
	UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA
	Microcontroladores y MicroProcesadores

	Jiménez Robles Luis Eduardo
			01208396

	Programa de un retardo de 666ms o 10,656,000 ciclos
*/

ldi R16,140					;1
	r232:
		ldi R17, 118		;n			
		dec R16	 			;n
		nop					;n
		nop					;n
		label1:
			ldi R18,214		;m*n
			dec R17 		;m*n
			label2:
				dec R18		;mno
				brne label2	;2o-1*mn
			brne label1		;2m-1*n 		
		brne r232			;2n-1	
			
							;TOTAL: 1+3n+2mn+mno+2mno-mn+2mn-n+2n-1
							;TOTAL: 3mno+3mn+5n+10
