		#include <p18f4550.inc>

		org		0x00
		goto	start
		org		0x08
		retfie
		org		0x18

SubR	CLRF	TRISD, A
		CLRF	PORTD
		movlw	0x00
		movwf	0x01, A
		BTG		0x01, 1, A
		BTG		0x01, 3, A
		BTG		0x01, 5, A
		movlw	B'00000001'
		ADDWF	0x01, W, A
		movwf	PORTD, A

start	call	SubR
		


		END