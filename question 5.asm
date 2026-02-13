ORG 0000H
LJMP MAIN

ORG 0030H
MAIN:
    MOV R0, #40H     ; R0 = pointer to scan RAM
    MOV R2, #20H     ; 32 bytes to scan (40H–5FH)

SCAN:
    MOV A, @R0       ; Load byte from memory

    CJNE A, #0FFH, NEXT ; If not FFH, skip replacement
    MOV @R0, #00H       ; If FFH, replace with 00H

NEXT:
    INC R0           ; Move to next memory location
    DJNZ R2, SCAN    ; Repeat 32 times

DONE:
    SJMP DONE        ; Stop here

END

