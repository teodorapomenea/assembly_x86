org 100h

init: mov ax, 1A26h
      mov bx, 553Fh
      
part1: shr ax, 3h
part2: shr bx, 5h
part3: xor ax, bx
int 20h