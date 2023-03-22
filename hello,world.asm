section .data
    hello db 'Hello, world!', 0

section .text
    global _start

_start:
    ; write 'Hello, world!' to stdout
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, 13
    int 0x80

    ; exit program with status 0
    mov eax, 1
    xor ebx, ebx
    int 0x80
