ORG 0000H
LJMP MAIN

ORG 0030H
MAIN:
    CLR A              ; Clear accumulator

    ORL A, #01H        ; Logical OR to set bit 0
    ANL A, #0FH        ; Mask upper bits

    ORL A, #02H        ; Logical OR to set bit 1
    ANL A, #0FH        ; Mask upper bits

    ORL A, #04H        ; Logical OR to set bit 2
    ANL A, #0FH        ; Mask upper bits

HERE:
    SJMP HERE          ; Stop program
END





