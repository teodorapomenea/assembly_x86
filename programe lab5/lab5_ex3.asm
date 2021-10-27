org 100h 

init: mov AX, 0h
      mov DX, 0h

jmp main

numbers db 43h, 0ABh, 87h, 09h 
result dw 'x x x x'
                            
main: lea BX, numbers
      push [BX]

      push [BX+2h]

      call function
      mov result, AX 
      int 20h 
      
function: mov BP, SP
          mov AX, [BP+2h]
          mov DX, [BP+4h]
          mov CX, AX
       
       shl DL, 2h
       xor DL, DH

       shl AL, 2h 
       xor AL, AH
       
       and DX, AX
       not DX
       mov AX, DX 
       ret 

