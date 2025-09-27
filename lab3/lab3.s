global _start

section .text
_start:
    ; Syscall 'write'
    mov rax, 1          ; System call number for write
    mov rdi, 1          ; File descriptor (1 = stdout)
    mov rsi, message    ; Address of the message
    mov rdx, 8         ; Length of the message
    syscall             ; Execute the system call

    ; System call 'exit'
    mov rax, 60         ; System call number for exit
    xor rdi, rdi        ; Exit status 0
    syscall             ; Execute the system call

section .data
message: db "KI-241", 10