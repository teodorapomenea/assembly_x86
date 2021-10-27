org 100h

mov AX, 0h
mov DX, 0h

mov AX, 1234h
add AX, 8017h
adc DX, 0h
add AX, 3302h
adc DX, 0h

mov BX, 3h
div BX
mov CX, AX

int 20h
