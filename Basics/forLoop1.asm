   ; arr1[i] = arr2[7 - i]
    AREA forLoop, CODE, READONLY
    
    LDRB R0, =ARR1
    LDRB R1, =ARR2
    MOV R2, #00    ;i

NEXT    
    CMP R2,#08
    BEQ endOfPgm
    
    SUBS R4, #07, R2
    LDRB R3, [R1, R4]
    STR R3, [R1, R2]
    
    ADDS R2, R2, #01 ; i++
    
    B NEXT
    
    NOP
    NOP
    
    AREA data1, DATA, READWRITE
 ARR1 DCD 0X0, 0X0, 0X0, 0X0, 0X0, 0X0, 0X0
 ARR2 DCD 0X0, 0X0, 0X0, 0X0, 0X0, 0X0, 0X0
    END
