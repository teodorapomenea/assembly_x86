org 100h 

jmp main  

alpha	dw 	1015h
beta	dw 	0xAABBh
gamma	dw	6789h

main: push [alpha]
	  push [beta]
	  call maxim
	  add SP, 4h
	
	  push [gamma]
	  push AX
	  call maxim
	  add SP, 4h

int 20h 

maxim:	mov BP, SP
	    mov BX, [BP+2h]
	    mov CX, [BP+4h]
	    cmp BX, CX
	    ja maxi1

maxi2:	mov AX, CX
	    jmp exitsubpr

maxi1:	mov AX, BX
	
exitsubpr: ret 




