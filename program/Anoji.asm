.MODEL SMALL
.CODE
ORG 100h

mulai:jmp proses
nilA db 41
nilB db 00

kat0 db 'Nilai a lebih kecil dari nilai b $'
kat1 db 'Nilai a sama dengan nilai b $'
kat2 db 'Nilai a lebih besar dari nilai b $'

proses:
    mov al,nilA
	cmp al,nilB
	JB Akecil ; bil A < bil B
	JE sama ; bil A = bil B
	JA Abesar ; bil A > bil B
	
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
	int 20h

end mulai