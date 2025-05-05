; ALDRICH LEONOR CMSC 313 4/30/2025
; Hello World Program - asmtutor.com
; Compile with: nasm -f elf32 -g -F dwarf -o lesson2.o lesson2.asm
; Link with: ld -m elf_i386 -o lesson2 lesson2.o
; Run with: ./lesson2

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

        mov     ebx, 0
        mov     eax, 1
        int     80h
