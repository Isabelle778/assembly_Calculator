global_start

divide_values:
	mov ah, 0
	mov al, [num1]
	sub al, '0'
	
	mov bl, [num2]
	sub bl, '0'
	
	div bl
	add ax, '0'
	
	mov [res], ax
	
	mov eax, 4
	mov ebx, 1
	mov ecx, res
	mov edx, 2
	int 0x80
	
	jmp exit

leave
ret
