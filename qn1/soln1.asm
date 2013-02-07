;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                              ;
; Author    :   Arvind S Raj                                                   ;
; Date      :   23/01/2013                                                     ;
; Filename  :   soln1.asm                                                      ;
; Program   :   print "Hello World" using printf                               ;
; Note      :   This program was tested in Ubuntu 12.04 64 bit with package    ;
;               gcc-multilib installed. It should work fine in Ubuntu 12.04 32 ;
;               bit version too. Untested on other version/operating systems.  ;
;                                                                              ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

extern printf                           ; declare printf as extern

section .data
    msg:    db "Hello World", 10, 0      ; msg to print
    len:    equ $-msg                   ; len of msg

section .text
    global main                         ; entry point for gcc

    main:
        push ebp                        ; saving old base pointer
        mov ebp, esp                    ; setting up current base pointer

        push dword msg                  ; push msg
        call printf

        add esp, 4                      ; pop msg off stack
        pop ebp                         ; restore ebp
        mov eax, 0                      ; exit code
        ret
