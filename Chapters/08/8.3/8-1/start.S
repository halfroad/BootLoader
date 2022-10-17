@****************************************************************
@
@	File:		start.S
@	Function:	Handover the controls to main program
@
@****************************************************************

.text
.global	_start


_start:


			LDR	sp,	= 0x00007f00
			
			BL	main
			
half_loop:

			B	halt_loop
