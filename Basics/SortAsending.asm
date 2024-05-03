;asm to sort the elements in the ascending order
    AREA SortAscending, CODE, READONLY
    
    LDR R0, =ARR
    MOV R1, R0
    ADDS R2, R1, #04
    MOV R9, #04
LOOP1
LOOP2
    MOV R8, #03
    LDR R3, [R1]
    LDR R4, [R2]
    
    CMP R3, R4
    BGT SWAPELE
LOOP3    
    ADDS R1, R1, #04
    ADDS R2, R2, #04
    
    SUBS R8, R8, #01
    BNE LOOP2
    
    SUBS R9, R9, #01
    BNE LOOP1
    B endOfPgm
    
SWAPELE
    STR R3, [R2]
    STR R4, [R1]
    B LOOP3

endOfPgm    
    NOP
    NOP
    
    AREA data1, DATA, READWRITE
 ARR DCD 0X0, 0X0, 0X0, 0X0
    END 
