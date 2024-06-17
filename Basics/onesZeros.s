;asm to find the no of ones and zeroes in the number

	AREA onesZeros, CODE, READONLY
	LDR R0, =NUM1
	LDR R1, [R0]
	
	MOV R8, #00
	MOV R9, #00
	
LOOP1
	CMP R1, #00
	BEQ endOfPgm
	
	MOVS R1, R1, LSR #01
	BCS ONES
	
NEXT	
	B LOOP1
	
ONES
	ADDS R8, R8, #01
	B NEXT	
endOfPgm
	RSB R9, R8, #32 
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
NUM1 DCD 0X0
	END