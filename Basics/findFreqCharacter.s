;asm to find the freq of character in a String

	AREA findCharacter, CODE, READONLY
	LDR R0, =STR1
	LDR R1, =RES
LOOP1	
	LDRB R2, [R0], #01
	CMP R2, #"!"
	BEQ endOfPgm
	
	CMP R2, #"O"
	BEQ NEXT
NEXT1	
	B LOOP1
	
NEXT
	ADDS R3, R3, #01
	B NEXT1
endOfPgm
	STR R3, [R1]
	NOP
	NOP
STR1 DCB "OPPO!",0
	AREA data1, DATA, READWRITE
RES DCD 0X0
	END