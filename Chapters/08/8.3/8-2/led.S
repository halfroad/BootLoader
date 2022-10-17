.EQU		PH_CFG1,	0x01c20900
.EQU		PH_CFG3,	0x01c20904

.EQU		PH_PULL0,	0x01c20918
.EQU		PH_PULL1,	0x01c2091c

.EQU		PH_DAT,		0x01c2090c


.global		main


main:

			LDR	r0,		=	PH_CFG1
			LDR	r1,		=	0x10000000
	
			STR	r1,		[r0]
			
			
			LDR	r0,		=	PH_CFG2
			LDR	r1,		=	0x00000001
			
			STR	r1,		[r0]
			
			LDR	r0,		= PH_PULL0
			LDR	r1,		0x55555555
			
			STR	r1,		[r0]
			
			LDR	r0,		= PH_PULL1
			LDR	r1,		0x55555555
			
			STR	r1,		[r0]
			
			
LedLoop:

			
			LDR	r0,		=	PH_DAT
			LDR	r1,		0x000f0000
			
			STR	r1,		[r0]
			
			BL			Delay
			
			LDR	r0,		=	PH_DAT
			LDR	r1,		=	0x0000f000
			
			STR r1,		[r0]
			
			BL 			Delay
			
			B			LedLoop


Delay:

			LDR	r3,		=	0xfffff


Delay1:

			SUB	r3,		r3,	#1
			CMP	r3,		#0x0
			
			BNE			Delay1
			
			MOV	pc,		lr

