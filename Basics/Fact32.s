;asm to find tge factorial of a no
    AREA fact32 CODE READONLY
    
    LDR R0, =NUM1
    LDR R1, =RESULT
    LDR R2, [R0]
    CMP R2, #00
    BEQ STRVALUE
    CMP R2, #01
    BEQ STRVALUE
    
    MOV R3, R2
    
LABEL1    
    SUBS R2, R2, #01
    MULS R3, R3, R2
    CMP R2, #02
    BEQ ENDpgm
    B LABEL1
    B resStore
    
STRVALUE
    MOV R2, #01
    STR R2, [R1]
    B ENDpgm
    
resStore
    STR R3, [R1]
    
ENDpgm    
    NOP
    NOP
    
    AREA data1, DATA, READWRITE
NUM1 DCD OXO
RESULT DCD OXO  
    
