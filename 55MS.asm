/*
	UNIVERSIDAD AUTONOMA DE BAJA CALIFORNIA
	Microcontroladores y MicroProcesadores

	Jiménez Robles Luis Eduardo
			01208396

	Programa de un retardo de 5ms o 80k ciclos
*/

ldi R16,139			;1

	r232:
		ldi R17, 190	;n			
		dec R16	 		;n
		nop				;n
		
		label1:
			dec R17 	;m*n
			brne label1	;2m-1 *n 
						
		brne r232		;2n-1		
						;TOTAL: 3n+mn+2mn-n+2n
						;TOTAL: 4n+3mn+10
