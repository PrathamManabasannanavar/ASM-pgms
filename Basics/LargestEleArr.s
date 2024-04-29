; asm to find the largest element in the array
AREA greaterELE, CODE, READONLY
    
    LDR R0, =LARG
    LDR R1, =ARR
    LDR R2, [R0]
    MOV R4, #04
    
LOOP2    
    LDR R3, [RO, #04]!
    SUBS R3, R2, #01
    BMI NEGATIVE
LOOP1
    SUBS R5, R5, #01
    BNE LOOP2
    STR R3, [R0]
    B PgmEnd
    
NEGATIVE
    MOV R4, R3
    MOV R3, R2
    MOV R2, R4
    B LOOP1
    
PgmEnd
    NOP
    NOP
    
    AREA data1, DATA, READWRITE
LARG DCD 0X0
ARR DCD 0X0, 0X0, 0X0, 0X0, 0X0 
    END 
