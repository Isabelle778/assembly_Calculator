; Calculator
; Actor : Isabelle Mendes
; Date : 01-05-2023

global_start

%macro scall 4
        mov eax,%1
        mov ebx,%2
        mov ecx,%3
        mov edx,%4
        int 80h
%endmacro


section.data
        arr dq 0000003h,00000002h
        n eq 2

tmp db 0,0

welcome_message:
        mov rax, 0x1
        mov rdi, 1
        mov rsi welcome
        mov rdx, welcome_lenght
        syscall
        ret


welcome db 0dh, 0ah, 0dh, 0ah,"welcome to my calculator :)", 0dh, 0ah
welcome_lenght equ $-welcome
choice db, "please choose a number:", 0dh, 0ah
choice_lenght equ $-choice
operator db "1-Add", 0dh, 0ah,"2-Substract", 0dh, 0ah,  "3-Multiply", 0dh, 0ah,  "4-Divide", 0dh, 0ah,  "5-Exit", 10
operator_lenght equ $-operator


section.text

_start

LOOP: 

call welcome_message 
call get_choice 
call operators 
call get_input 
call Compare_input 
jmp LOOP
  
get_choice:

mov rax, 0x1
mov rdi, 1
mov rsi choice
mov rdx, choice_lenght
syscall
ret

operators

mov rax, 0x1
mov rdi, 1
mov rsi operator
mov rdx, operator_lenght
syscall
ret

get_input:

mov rax, 0
mov rdi, 0
mov rsi, tmp
mov rdx, 2
syscall

cmp byte[rsi], '1'
je Add

cmp byte[rsi], '2'
je Substract 

cmp byte[rsi], '3'
je Multiply

cmp byte[rsi], '4'
je Divide

cmp byte[rsi], '5'
je Exit
