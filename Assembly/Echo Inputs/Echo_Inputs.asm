global _start

section .bss
    buffer resb 1

section .text
_start:
.loop:
        mov rax, 0
        mov rdi, 0
        mov rsi, buffer
        mov rdx, 1
        syscall

        mov rax, 1
        mov rdi, 1
        mov rsi, buffer
        mov rdi, 1
        syscall

        jmp .loop
