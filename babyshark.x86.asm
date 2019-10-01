[org 0x7c00]

mov bx, strings.baby
mov bx, strings.doo
mov bx, strings.baby
mov bx, strings.doo
mov bx, strings.baby
mov bx, strings.doo
mov bx, strings.baby
mov bx, strings.shout

mov bx, strings.mommy
mov bx, strings.doo
mov bx, strings.mommy
mov bx, strings.doo
mov bx, strings.mommy
mov bx, strings.doo
mov bx, strings.mommy
mov bx, strings.shout

mov bx, strings.daddy
mov bx, strings.doo
mov bx, strings.daddy
mov bx, strings.doo
mov bx, strings.daddy
mov bx, strings.doo
mov bx, strings.daddy
mov bx, strings.shout

mov bx, strings.granny
mov bx, strings.doo
mov bx, strings.granny
mov bx, strings.doo
mov bx, strings.granny
mov bx, strings.doo
mov bx, strings.granny
mov bx, strings.shout

mov bx, strings.grandpa
mov bx, strings.doo
mov bx, strings.grandpa
mov bx, strings.doo
mov bx, strings.grandpa
mov bx, strings.doo
mov bx, strings.grandpa
mov bx, strings.shout

mov bx, strings.letsgo
mov bx, strings.doo
mov bx, strings.letsgo
mov bx, strings.doo
mov bx, strings.letsgo
mov bx, strings.doo
mov bx, strings.letsgo
mov bx, strings.shout

mov bx, strings.run
mov bx, strings.doo
mov bx, strings.run
mov bx, strings.doo
mov bx, strings.run
mov bx, strings.doo
mov bx, strings.run
mov bx, strings.shout

mov bx, strings.safe
mov bx, strings.doo
mov bx, strings.safe
mov bx, strings.doo
mov bx, strings.safe
mov bx, strings.doo
mov bx, strings.safe
mov bx, strings.shout

mov bx, strings.its
mov bx, strings.doo
mov bx, strings.its
mov bx, strings.doo
mov bx, strings.its
mov bx, strings.doo
mov bx, strings.its
mov bx, strings.shout


jmp $

strings:
.baby:
db "Baby shark",0
.mommy:
db "Mommy shark",0
.daddy
db "Daddy shark",0
.granny
db "Grandma shark",0
.grandpa
db "Grandpa shark",0
.letsgo
db "Let's go hunt",0
.run
db "Run away",0
.safe
db "Safe at last",0
.its
db "It's the end",0
.doo
db ", doo doo doo doo doo doo",0xa,0xd,0
.shout
db "!",0xa,0xd,0

print_string:
 pusha
.loop:
 mov al, [bx]
 cmp al, 0
 je .return
 mov ah, 0x0e
 int 0x10
 add bx, 1
 jmp .loop

.return:
 popa
 ret

times  510-($-$$) db 0
dw 0xaa55
