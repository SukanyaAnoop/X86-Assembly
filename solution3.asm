; A program that receives the age of a person as input and
; outputs whether the person is eligible for voting or not.(Assume minimum voting age as 18)
; Author : Sukanya
; Input  :   Recieves an age given by the user
; Output :   Gives the person is eligible for voting or not.
; Date   :   06-02-2013



section .data
        fixd_age:dd 18
        age_in  :db 0
        message :db "Enter the age",10,0
        message1:db "Eligible for voting",10,0
        message2:db "Not Eligibile for voting",10,0
	read    :db "%d",0

section .text
        global main
        extern printf
        extern scanf

main:
        push ebp
        mov ebp,esp
        push message
        call printf

        add esp,4 
`	
        push DWORD age_in
        push age_in
	push read
	call scanf

	mov eax,[age_in]
        cmp eax,[fixd_age]

        jge label

        push message2
        call printf;
        jmp done

        label:
                push message1;
                call printf;
                jmp done

        done:
                mov esp,ebp;
                pop ebp
                ret

