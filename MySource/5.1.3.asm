org 100h 

jmp main 

alpha dw 5435h
beta  dw 0FFD4h
gamma dw 4563h
delta dw 0987h


main:  
       
      push [alpha]
      push [beta]
      push [gamma]
      push [delta]
      call function 
      add SP, 8h 
      int 20h 
      
function: mov BP, SP
          mov AX, [BP+8h]
          mov DX, [BP+6h] 
          mov CX, [BP+4h]
          mov BX, [BP+2h]
          shl AX, 2h
          xor AX, DX 
          shl CX, 2h
          xor CX, BX
          and AX, CX 
          not AX
          ret
          



