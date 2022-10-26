; Uppercase a string.
;
; The program runs on CP/M but you need a debugger like DDT or SID to inspect the
; process and the machine state. From SID start the program with this command,
; which runs it until the breakpoint at address 'done':
;
; g,.done


TPA         equ     100h
LOWERA      equ     61h                 ; ASCII lowercase a
LOWERZ      equ     7ah                 ; ASCII lowercase z
OFFSET      equ     32                  ; lowercase-uppercase offset
LEN         equ     17                  ; String length


            org     TPA

            lxi     h, string
            mvi     c, LEN
            mvi     d, LOWERA
            mvi     e, LOWERZ

loop:       mvi     a, 0
            cmp     c                   ; c == 0?
            jz      done                ; Yes
            mov     a, d
            mov     b, m                ; B holds current character in string
            cmp     b                   ; < a?
            jnc     skip                ; Yes, skip to next character
            mov     a, e
            cmp     b                   ; > z? 
            jc      skip                ; Yes, skip to next character
            mov     a, b
            sui     OFFSET              ; Subtract offset to get uppercase
            mov     m, a
skip:       inx     h
            dcr     c
            jmp     loop

done:       ret


string:     db      'Mixed Case String'

            end
