mov ah, 0x0e
mov al, 'P'
int 0x10

mov ah, 0x0e
mov al, 'o'
int 0x10

mov ah, 0x0e
mov al, 't'
int 0x10

mov ah, 0x0e
mov al, 't'
int 0x10

mov ah, 0x0e
mov al, 'a'
int 0x10

mov ah, 0x0e
mov al, 'n'
int 0x10

mov ah, 0x0e
mov al, 'N'
int 0x10

mov ah, 0x0e
mov al, 'a'
int 0x10

mov ah, 0x0e
mov al, 'n'
int 0x10

mov ah, 0x0e
mov al, 'd'
int 0x10

mov ah, 0x0e
mov al, 'u'
int 0x10

mov ah, 0x0e
mov al, ' '
int 0x10

mov ah, 0x0e
mov al, 'O'
int 0x10

mov ah, 0x0e
mov al, 'S'
int 0x10

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa