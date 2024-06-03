;asm to substract the two 128bit nors

	AREA sub128, CODE, READONLY
	MOV R10, #00
	LDR R0, =L1NUM1
	LDR R1, =L2NUM1	
	
	LDR R2, =L1NUM2
	LDR R3, =L2NUM2
	
	LDR R4, =L1RES
	LDR R5, =L2RES
	
	;1st digit
	LDR R6, [R0]
	LDR R7, [R2]
	
	SUBS R8, R6, R7
	SBCS R9, R9, #00
	STR R8, [R4]
	
	;2nd digit
	LDR R6, [R1]
	LDR R7, [R3]
	
	SBCS R8, R6, R7
	STR R8, [R5] ;END
	
	LDR R0, =M1NUM1
	LDR R1, =M2NUM1	
	
	LDR R2, =M1NUM2
	LDR R3, =M2NUM2
	
	LDR R4, =M1RES
	LDR R5, =M2RES
	
	;3rd digit
	LDR R6, [R0]
	LDR R7, [R2]
	
	SBCS R8, R6, R7
	STR R8, [R4]
	
	;4TH digit
	LDR R6, [R1]
	LDR R7, [R3]
	
	SBCS R8, R6, R7
	STR R8, [R5] ;END
	
	NOP
	NOP
	
	AREA data1, DATA, READWRITE
L1NUM1 DCD 0X0
L2NUM1 DCD 0X0
M1NUM1 DCD 0X0
M2NUM1 DCD 0X0
	
L1NUM2 DCD 0X0
L2NUM2 DCD 0X0
M1NUM2 DCD 0X0
M2NUM2 DCD 0X0
	
L1RES DCD 0X0
L2RES DCD 0X0
M1RES DCD 0X0
M2RES DCD 0X0
	
	END