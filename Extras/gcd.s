;asm to find the gcd of two numbers
	AREA gcd, CODE, READONLY
	LDR R0, =NUM1
	LDR R1, =NUM2
	LDR R9, =RES
	LDR R2, [R0]
	LDR R3, [R1]
	
	
LOOP1
	CMP R2, R3
	BEQ endOfPgm
	BGT GREATER
	B SMALLER
BACK	
	B LOOP1
GREATER
	SUBS R2, R2, R3
	B BACK
SMALLER
	SUBS R3, R3, R2
	B BACK
endOfPgm
	STR R3, [R9]
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
NUM1 DCD 0X0
NUM2 DCD 0X0
RES DCD 0X0	
	END