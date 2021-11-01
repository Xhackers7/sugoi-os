mov ah, 0x0e
mov al, 65

loop:
    cmp al, 97
    jge small
    cmp al, 90
    jle big
    jmp mainloop

big:
    int 0x10
    add al, 32
    jmp mainloop

small:
    int 0x10
    sub al, 32

mainloop:
    inc al
    cmp al, 90
    je exit
    cmp al, 122
    je exit
    jmp loop

exit:
    jmp $
    times 510-($-$$) db 0
    db 0x55, 0xaa