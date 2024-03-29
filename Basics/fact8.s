AREA fact8, CODE, READONLY

; Load addresses of RESULT and NUM1 into registers
LDR R1, =RESULT  ; Load address of RESULT variable
LDR R2, =NUM1   ; Load address of NUM1 variable

; Load the number from NUM1 into R4
LDR R4, [R2]     ; Load value from NUM1 memory location

; Initialize RESULT (factorial) to 1 in R9
MOV R9, #01      ; Set R9 to 1

; Check for base cases (0! = 1, 1! = 1)
CMP R4, #00       ; Compare R4 (number) with 0
BEQ label1        ; If equal (0!), branch to label1

CMP R4, #01       ; Compare R4 (number) with 1
BEQ label1        ; If equal (1!), branch to label1

; Initialize loop counter (R5) to R4 (number)
MOV R5, R4        ; Copy R4 (number) to R5 (loop counter)

; Factorial calculation loop
loop:
    SUBS R4, R4, #01 ; Decrement R4 (number)
    MULS R5, R5, R4  ; Multiply R5 (result) by R4 (decremented number)
    CMP R4, #02       ; Check if R4 (number) is greater than 2
    BGT loop          ; If greater than 2, branch back to loop

; Store the final result (factorial) in RESULT memory location
label2:
    STR R5, [R1]     ; Store R5 (result) into RESULT memory location

; Exit program
    B END           ; Branch to program end

; Handle base cases (0! = 1, 1! = 1)
label1:
    STR R9, [R1]     ; Store 1 (factorial) in RESULT for base cases

; End of program
END:
    NOP              ; No operation (optional)

AREA data1, DATA, READWRITE
RESULT D          ; Allocate memory for RESULT variable (word)
NUM1 DCD 0x0      ; Allocate memory for NUM1 variable (word) and initialize it to 0

; Code will be loaded at address 0 (optional)
ORG 0x0
