org 100h

init: mov ax,0h 
      mov bx, 0h
       
       
part1: mov al, 26h
       shl ax, 8h
       or al, 99h
       
part2: mov bl, 3Fh
       shl bx, 8h
       or bl, 8Dh
       
part3: and ax, bx
       not ax
       int 20h