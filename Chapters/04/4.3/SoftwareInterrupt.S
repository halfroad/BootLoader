.data

	msg:
	
			.asciz			"Hello, world"
			
			
.text

			.align			2
			.globl			_start
	
_start:

			LDR				r1,	=msg		/* address */
			
			MOV				r0,	#1			/* stdout */
			MOV				r2,	#13			/* length */
			
			SWI				#0x900004		/* sys_write */
			
			MOV				r0,	#0
			
			SWI				#0x900001		/* sys_exit */
			
			.align			2
			
	
