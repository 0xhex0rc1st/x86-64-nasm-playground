global  _start

section .data
func:
        db  "Hello World!", 10
        len equ $ - func

section .text
_start:
        mov rax, 1
        mov rdi, 1
        mov rsi, func
        mov rdx, len
        syscall

        mov rax, 60
        mov rdi, 0
        syscall
