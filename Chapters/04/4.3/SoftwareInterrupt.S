.DATA

	message:
	
			.ASCIZ			"Hello, world\n"
			
			
.TEXT

			.ALIGN			2
			.GLOBAL			_start
	
_start:

			MOV				x0,	#1			//	Standard Output
			
			LDR				x1,	= message	//	Address of message to print
			
			MOV				x2,	#13			//	Length of string to print
			MOV				x8, #64			//	Linux write system call
			
			SVC				0				//	Software Interrupt call to print the string
			
			// Setup the parameters to exit the program,
			// and then call Linux to perform
			
			MOV				x0,	#0			//	Return code 0
			MOV				x8, #93			//	Service code 93 to terminate the program

			SVC				0				//	Call Linux to terminate
			
			.ALIGN			2
			
	
