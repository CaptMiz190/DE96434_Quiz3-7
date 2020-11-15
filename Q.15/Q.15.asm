		#include<p18f4550.inc>

		org	0x00
		goto	start
		org	0x08
		retfie
		org	0x18
		retfie


start	setf	TRISB, A
		clrf	PORTB, A
		setf	PORTD, A
		clrf	TRISD, A

check 	btfss 	PORTB, 0, A
		call	LED
		bra 	check1

LED		bsf		PORTD, 0, A
		bra 	check1

check1	btfss 	PORTB, 1, A
		call	LED1
		bra		check

LED1	bsf		PORTD, 1, A
		bra		check

		NOP
		END

