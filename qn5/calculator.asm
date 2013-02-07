; A calculator prgram that performs the basic integer arithmetic operations
; Author : Sukanya
; Date   :   06-02-2013
 


section .data

    msg1    : db "CALCULATOR",10,0
    msg2    : db "Enter the choice of your operation",10,0
    msg3    : db "1 Addition: 2 Subtraction: 3 Multiplication: 4 Division: 5 AND: 6 OR: 7 NOT: 8 LeftShift: 9 RightShift:      		      10 Exit",10,0
    msg4    : db "Enter the first operand",10,0
    msg5    : db "Enter the second operand",10,0
    msg8    : db "Enter the operand",10,0
    msg6    : db "The result =%d",10,0
    msg7    : db "Invalid Choice",10,0
    read    : db "%d",0
    choice  : dd 0
    integer1: dd 0
    integer2: dd 0



section .text

    extern printf
    extern scanf
    global main

main:

    push ebp
    mov ebp,esp

    push msg1
    call printf

label1:

    push msg2   
    call printf

    push msg3
    call printf

    add esp,12

    push choice
    push read
    call scanf

    mov eax,[choice]
    cmp eax,1
    
    je choice1
    
    cmp eax,2
    je choice2
    
    cmp eax,3
    je choice3
    
    cmp eax,4
    je choice4
    
    cmp eax,5
    je choice5
    
    cmp eax,6
    je choice6
    
    cmp eax,7
    je choice7
    
    cmp eax,8
    je choice8
    
    cmp eax,9
    je choice9
    
    cmp eax,10
    je done

    push msg7
    call printf
    add esp,4
    jmp done

choice1:

    push msg4   
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    push msg5
    call printf
    add esp,4

    push integer2
    push read
    call scanf

    mov eax,[integer1]
    mov ebx,[integer2]
    add eax,ebx

    push eax
    push msg6
    call printf
    jmp label1

choice2:

    push msg4   
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    push msg5
    call printf
    add esp,4

    push integer2
    push read
    call scanf

    mov eax,[integer1]
    mov ebx,[integer2]
    sub eax,ebx

    push eax
    push msg6
    call printf
    jmp label1

choice3:

    push msg4   
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    push msg5
    call printf
    add esp,4

    push integer2
    push read
    call scanf

    mov eax,[integer1]
    mov ebx,[integer2]
    imul ebx

    push eax
    push msg6
    call printf
    jmp label1

choice4:

    push msg4   
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    push msg5
    call printf
    add esp,4

    push integer2
    push read
    call scanf

    mov eax,[integer1]
    mov ebx,[integer2]
    mov edx,0
    idiv ebx

    push eax
    push msg6
    call printf
    jmp label1

choice5:

    push msg4   
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    push msg5
    call printf
    add esp,4

    push integer2
    push read
    call scanf

    mov eax,[integer1]
    mov ebx,[integer2]
    AND eax,ebx

    push eax
    push msg6
    call printf
    jmp label1

choice6:
    
    push msg4   
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    push msg5
    call printf
    add esp,4

    push integer2
    push read
    call scanf

    mov eax,[integer1]
    mov ebx,[integer2]
    OR eax,ebx

    push eax
    push msg6
    call printf
    jmp label1

choice7:
    
    push msg8 
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    mov eax,[integer1]
    NOT eax

    push eax
    push msg6
    call printf
    jmp label1


choice8:

  
    push msg8 
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    


    mov eax,[integer1]
    shl eax,1

    push eax
    push msg6
    call printf
    jmp label1


choice9:

    push msg8 
    call printf
    add esp,4

    push integer1
    push read
    call scanf
    
    mov eax,[integer1]
    sar eax,1

    push eax
    push msg6
    call printf
    jmp label1
    
      

done:

    mov esp,ebp
    pop ebp
    ret
