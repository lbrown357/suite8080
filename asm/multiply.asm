; Code segment:

INCLUDE stdlib.asm

        ORG    0h       ; Set Program Counter to address 0
START:  LDA    VAL1     ; Load value (5) at VAL1 (200) into Accumulator
        MOV    C,A      ; Move value in Accumulator to Register B
        LDA    VAL2     ; Load value (8) at VAL2 (201) into Accumulator
        MOV    D,A      ; Move value in Accumulator to Register B
        CALL   MULTI
        MOV    A,C
        STA    SUM
        HLT    ; Jump to start of code (infinite loop)

; Data segment:

        ORG    80h     ; Set Program Counter to address 200
VAL1:   DB     7h       ; Data Byte at address 200 = 5
VAL2:   DB     6h      ; Data Byte at address 201 = 8 (10 octal)
SUM:    DB     0h       ; Data Byte at address 202 = 0


        END             ; End
