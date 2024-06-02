;asm to demonstrate LDMDB AND STMDB

	AREA multipleLoadStore2, CODE, READONLY
	LDR R0, =ARR
	LDR R1, =ARR1
	ADDS R1, R1, #08
	LDMIA R0!, {R2-R4}
	STMDA R1!, {R2-R4}
	;0-3 4-7 8-11
	;20-23 16-19 12-15
	;it works ex: 2nd memory location --> access
	;you can't do 4000+4*2 = 4008 --> wrong
	;it will store from 4008 - 400C
	;					4004-4007
	;so if you want to store at 2nd address do 4000+2*4 - 4
	;this stores in 4004 - 4007
	;				4000-4003
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
ARR DCD 0X0, 0X0, 0X0
ARR1 DCD 0X0	
	END