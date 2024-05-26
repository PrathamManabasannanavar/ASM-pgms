;asm to sort the elements in the ascending order    
    AREA SortAscending, CODE, READWRITE
    LDR R0, =ARR
    MOV R3, #05 ;OUTER LOOP
    MOV R9, #05 ;INNER LOOP

LOOP1
    SUBS R3, R3, #01 ;COUNT
    BEQ endOfPgm    ;checking the termination condition for outerloop
    MOV R1, R0      ;R1 = R0
    ADDS R2, R2, #04 ;R2 = R0 + 4
    SUBS R9, R9, #01   ; doing n-1-i
LOOP2
    SUBS R9, R9, #01
    BEQ LOOP1   ;checking the inner loop condition

    LDR R4, [R1]
    LDR R5, [R2]

    CMP R4, R5
    BGT SWAPELE
BACK1
    ADDS R1, R1, #04
    ADDS R2, R2, #04
    B LOOP2
    B LOOP1

SWAPELE
    STR R4, R2
    STR R5, R1
    B BACK1
    NOP
    NOP

endOfPgm
    AREA data1, DATA, READWRITE
ARR DCD OX04, 0X02, 0X03, 0X01 
    END
