ORG 0000H
; Store value 03H at RAM location 40H
MOV 40H, #03H    

; Load R0 with address 40H
MOV R0, #40H     

; Read the value from RAM via R0
MOV A, @R0       


