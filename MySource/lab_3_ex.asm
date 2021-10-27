

org 100h
init: lea BX, inputString
mov SI, 0h
mov CX, charX-inputString
mov DX, 0h
mov AH, [charY]
compare: mov AL, [BX+SI]
cmp AL, [charX]
je replace
nextElem: inc SI
loop compare
int 20h
replace: mov [BX+SI], AH
inc DX
jmp nextElem
inputString db 'alpha beta'
charX db 'a'
charY db 'A'






