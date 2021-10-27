org 100h 

jmp main 

numbers dw 5435h, 0FFD4h, 4563h, 0987h 

main: lea BX, numbers 
       
      push [BX]
      push [BX+2h]
      push [BX+4h]
      push [BX+6h]
      call function
      int 20h 
      
function: mov BP, SP
          mov AX, [BP+8h]
          mov DX, [BP+6h] 
          mov CX, [BP+4h]
          mov BX, [BP+2h]
          sub AX, DX
          sub CX, BX 
          
          mul CX
          ret
          