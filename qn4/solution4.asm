; A program that converts fahrenheit to celsius or vice versa.
; Author : Sukanya
; Asks for the users choice of conversion.
; Input  :   Temperature in a particular scale from the user.
; Output :   The corresponding conversion.
; Date   :   06-02-2013




section .data


	msg1 : db "Enter the choice",10,0
	 msg2: db "1 celsius to fahrenhiet",10,0
	 msg3: db "2 fahernhiet to celsius",10,0
	 msg6: db "Enter the celsius",10,0
	 msg5: db "Enter the fahrenhiet",10,0
	 msg7: db "The result =%d",10,0
	 msg4: db "%d",10,0
         fahren : dd 0
	 celsius: dd 0
	 choice : dd 0
         read   : db "%d" ,0
	 val1   : dd 5
         val2   : dd 9
	

section .text

	extern printf
	extern scanf
	global main
	main:
		push ebp
		mov ebp,esp
		
		push msg1
		call printf

                add esp,4

		push msg2
                call printf

                add esp,4
		
		push msg3
                call printf

                add esp,4

		push choice
                push read
		call scanf

		mov eax,[choice]
		cmp eax,2   ;check if choice 1
		je choice2


		push msg6  ;enter celcius
		call printf

                add esp,4
		
		push celsius 
		push read
		call scanf

		mov eax,[celsius] ;fahernhiet cal


		mov edx,0
                mov ebx,[val2]
                imul ebx

                mov ebx,[val1]
                idiv ebx
        
        
		add eax,32


	        push eax 
		push msg7
		call printf            ;display fahrenhiet
		jmp done


        choice2:
                
		push msg5  ;enter fahren
		call printf

                add esp,4
		
		push  fahren
		push read
		call scanf

		mov eax,[fahren] ;fahernhiet cal
		sub eax,32
		
                mov edx,0

                mov ebx,[val1]
                imul ebx
        
                mov ebx,[val2]
                idiv ebx


		push eax   
		push msg7
		call printf            ;display fahrenhiet
		jmp done


	done:	
		mov esp,ebp
		pop ebp
		ret	

