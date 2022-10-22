.model small
.code
org 100h

mulai: jmp proses
nilA db 127
nilB db 23
nilc db 4
kat0 db 'nilai c lebih kecil dari nilai b $'
kat1 db 'nilai a sama dengan dari nilai b $'
kat2 db 'nilai a lebih besar dari nilai c $'

proses:
mov al,nilA
cmp al,nilC
JB Akecil    ; bil A < bil B
JE sama        ; bil A = bil B
JA Abesar    ; bil a > bil B

Akecil:
lea dx,kat0
jmp cetak

sama:
lea dx,kat1
jmp cetak

Abesar:
lea dx,kat2
jmp cetak

cetak:
mov ah,09h
int 21h
MOV DL, 0ah 
int 20h
lea dx,kat0
int 21h
int 20h



end mulai