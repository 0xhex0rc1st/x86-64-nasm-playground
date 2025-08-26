global _start

section .bss
        buffer resb 256
        outbuf resb 20

section .text
_start:
        mov rax, 0
        mov rdi, 0
        mov rsi, buffer
        mov rdx, 256
        syscall

        mov rcx, rax
        cmp byte [buffer + rcx - 1], 10
        jne .skip_decrement
        dec rcx
.skip_decrement:
        mov rax, rcx
        mov rbx, 10
        lea rdi, [outbuf + 20]

.loop:
        xor rdx, rdx
        div rbx
        add dl, '0'
        dec rdi
        mov [rdi], dl
        test rax, rax
        jnz .loop

        mov rax, outbuf + 20
        sub rax, rdi
        mov rdx, rax

        mov rsi, rdi
        mov rax, 1
        mov rdi, 1
        syscall

        mov rax, 60
        xor rdi, rdi
        syscall

        

