[org 0x7c00]
mov ah, 0x0e 
mov bx, wlcmString 
printLoop:
    mov ah, 0x0e
    mov al, [bx]
    cmp al, 0
    je main
    int 0x10
    inc bx
    jmp printLoop



inputString:
    times 10 db 0

main:
    mov bx, inputString
    mov cx, 1
type:
    cmp cx, 10
    jge stopTyping
    mov ah, 0
    int 0x16
    mov [bx], al
    inc bx
    mov ah, 0x0e
    int 0x10
    jmp type


stopTyping:

wlcmString:
    db "Welcome to sugoi os! Please note that this is just a fun project ", 0



jmp $

times 510-($-$$) db 0
db 0x55, 0xaa
