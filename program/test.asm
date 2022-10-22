.MODEL SMALL
.CODE
ORG 100h

mulai: jmp proses
nilA dB 55
nilB dB 45

ket0  db 'nilai A leBih kecil dari nilai B $'
ket1  db 'nilai A sama dengan nilai B $'
ket2  db 'nilai A leBih Besar nilai b $'

proses:
	mov a1,nilA
	cmp a1,nilB
	JB Akecil	; Bil A < Bil B
	JE sama 	; Bil A = Bil B
	JA Abesar	; Bil A > Bil B

Akecil:
	lea dx,ket0
	jmp cetak

sama:
	lea dx,ket1
	jmp cetak

Abesar:
	lea dx,ket2
	jmp cetak

cetak:
	mov ah,09h
	int 21h
	int 20h

end mulai