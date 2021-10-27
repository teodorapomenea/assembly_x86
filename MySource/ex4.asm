
org 100h
init: mov AX, 0h
mov BX, 0h
part1: mov AL, 26h
shl AX, 8h
or AL, 99h
 
part2: mov BL, 3Fh
shl BX, 8h
or BL, 8Dh
 
part3: and AX, BX
not AX
int 20h

