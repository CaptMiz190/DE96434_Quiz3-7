		#include<p18f4550.inc>
		
		org 0x00
		goto start
		org 0x08
		retfie
		org 0x18
		
n  equ  D'85000'	
lp_cnt  set  0x10



start		movlw  n
			movwf  lp_cnt, A 
loop		nop
			decfsz  lp_cnt, F, A
			goto  loop


			End