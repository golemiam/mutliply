    .ORIG x3000
    LD R6, ASCII
    LD R5, NEGASCII
    IN
    ADD R1, R0, #0 ; Move to R1   
num1
    ADD R1, R1, R5 ; convert the ASCII to an integer
    IN
    ADD R0, R0, R5 ; Convert the ASCII to an integer
num2
    ADD R2, R0, #0 ; Move to R2
    JSR Multiply


    HALT
    BRnzp Done


Multiply    ; Parameters must be R1, and R2
    ADD R3, R2, #0 ; Move R2 to R3
Part_two
    ADD R4, R1, #0 ; Move R1 to R4
    ADD R1, R4, R2 ; Perform the multiply
    ADD R3, R3, #-1 ; Counter to multiply
    BRp Part_two
    RET

ASCII   .FILL x30           ; mask to add to convert to ASCII
NEGASCII .FILL xFFD0         ; negated ASCII maask (-x30)
Done
    .END
