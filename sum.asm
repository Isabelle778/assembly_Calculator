global_start

sum_values:
	mov al, [num1]
	sub al, '0'
	
	mov bl, [num2]
	sub bl, '0'

	add al, bl
	add al, '0'

	mov eax, 4
	mov ebx, 1
	mov ecx, res
	mov edx, 2
	int 0x80
	
	jmp exit
 
  leave 
  ret
