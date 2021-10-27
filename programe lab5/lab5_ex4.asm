org 100h 

jmp main

numbers dw 0A764h, 8A76h, 0A098h 

main: push offset numbers
      push (main-numbers)/2
      call Sum
      int 20h
      
Sum: mov BP, SP
     mov CX, [BP+2]
     mov BX, [BP+4]
     mov AX, [BX]
     mov DX, 0h 
     mov SI, 2h 
     dec CX
sumLoop: add AX, [BX+SI]
         adc DX, 0h
         add SI, 2h 
         loop sumLoop 
         ret
