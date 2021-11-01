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
    times 11 db 0

main:
    mov bx, inputString
    mov cx, 1
type:
    cmp cx, 10
    jg stopTyping1
    mov ah, 0
    int 0x16
    resume:
    cmp ah,0x1c
    je stopTyping
    mov [bx], al
    inc bx
    mov ah, 0x0e
    int 0x10
    jmp type

stopTyping1:
    mov ah, 0x1c
    jmp resume

stopTyping:
    mov bx, inputString
    mov ah, 0x0e
    mov al, ' '
    int 0x10

printLoop2:
    mov ah, 0x0e
    mov al, [bx]
    cmp al, 0
    je wlcmString
    int 0x10
    inc bx
    jmp printLoop2


wlcmString:
    db "Welcome to sugoi os! Please note that this is just a fun project ", 0

jmp $

times 510-($-$$) db 0
db 0x55, 0xaa

