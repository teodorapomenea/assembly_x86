org 100h 

jmp main 

numbers dw 2345h, 0AB54h, 1076h 

main: lea BX, numbers 
      mov SI, 0h 
      mov CX, (main-numbers)/2 
      
process: push [BX+SI]
         push [BX+SI+2]
         call getMax
         pop [BX+SI]
         pop [BX+SI+2] 
         add SI, 2h 
         lea BX, numbers
       
         push [BX+SI]
         push [BX+SI+2h]
         call getMax
         int 20h
         
getMax: mov BP, SP
        mov AX, [BP+2]
        mov BX, [BP+4]
        cmp AX,BX
        jb max 
exit_sub:        ret 
          
max: mov AX, BX
jmp exit_sub