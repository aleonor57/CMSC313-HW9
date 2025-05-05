; Hello World Program - asmtutor.com
; Compile with: nasm -f elf32 -g -F dwarf -o lesson1.o lesson1.asm
; Link with: ld -m elf_i386 -o lesson1 lesson1.o
; Run with: ./lesson1

        SECTION .data
        msg     db      'Hello World!', 0Ah

        SECTION .text
        global _start

_start:


        mov     edx, 13
        mov     ecx, msg
        mov     ebx, 1
        mov     eax, 4
        int     80h
