; Code segment:

        ORG    0h       ; Set Program Counter to address 0
START:  LDA    VAL1     ; Load value (5) at VAL1 (200) into Accumulator
        MOV    B,A      ; Move value in Accumulator to Register B
        LDA    VAL2     ; Load value (8) at VAL2 (201) into Accumulator
        LXI    BC,VAL1
        LXI    DE,VAL2
        CALL   MULTI
        POP    BC
        MVI    C,SUM
        JMP    START    ; Jump to start of code (infinite loop)

; Data segment:

        ORG    80h     ; Set Program Counter to address 200
VAL1:   DB     5h       ; Data Byte at address 200 = 5
VAL2:   DB     8h      ; Data Byte at address 201 = 8 (10 octal)
SUM:    DB     0h       ; Data Byte at address 202 = 0

INCLUDE stdlib.asm

        END             ; End
