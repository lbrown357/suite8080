;;;;;;;;;;;;;;;;;
; NAME:    add.asm
; AUTHOR:  Kevin Cole ("The Ubuntourist") <kevin.cole@novawebdevelopment.org>
; LASTMOD: 2020.10.06 (kjc)
;
; DESCRIPTION:
;
;     This is the assembly source code that produces the same machine
;     op codes as shown by the first example (add two numbers) in the
;     Altair 8800 Operator's Manual.
;
;;;;;;;;;;;;;;;;;;

; Code segment:

        ORG    0o       ; Set Program Counter to address 0
START:  LDA    VAL1     ; Load value (5) at VAL1 (200) into Accumulator
        MOV    B,A      ; Move value in Accumulator to Register B
        LDA    VAL2     ; Load value (8) at VAL2 (201) into Accumulator
        ADD    B        ; Add value in Register B to value in Accumulator
        STA    SUM      ; Store accumulator at SUM (202)
        JMP    START    ; Jump to start of code (infinite loop)

; Data segment:

        ORG    200o     ; Set Program Counter to address 128
VAL1:   DB     5o       ; Data Byte at address 128 = 5
VAL2:   DB     10o      ; Data Byte at address 129 = 8 (10 octal)
SUM:    DB     0o       ; Data Byte at address 130 = 0

        END             ; End
