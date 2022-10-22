.MODEL SMALL
.CODE
ORG 100h

proses: call ketik_kar
int 20h

ketik_kar proc near

mov ah,2h
mov dl,'1'
mov cx,9

ulang:
int 21h
add dl,1
loop ulang

ret
ketik_kar endp

end proses