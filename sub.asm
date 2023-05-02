global_start

sub_values:
	mov al, [num1]
	sub al, '0'
	
	mov bl, [num2]
	sub bl, '0'
	
	sub al, bl
	add al, '0'
	
	mov [res], al
	
	push res
	call printf
	
	jmp exit

leave
ret
