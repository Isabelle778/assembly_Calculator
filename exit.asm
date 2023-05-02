global_start

Exit:
    mov rax, 60    
    mov rdi, 0     
    syscall        
    sysexit        
    
leave    
ret
