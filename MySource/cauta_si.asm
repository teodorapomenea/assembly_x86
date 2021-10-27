org 100h

jmp start

sir db 14h, 55h, 98h, 0AAh, 55h , 28h

val db 55h



start:	push offset sir
        push val-sir
        call subpr
        add SP, 4h
        int 20h

subpr: mov BP,SP
       mov BX, [BP+4h]
       mov CX, [BP+2h]
       mov DX, 0h 
       mov SI, 0h
       
bucla: mov AL,[BX+SI]
       cmp AL,[val]
        
       je exista

increment: inc SI
           loop bucla
          
           ret
           
exista: inc DX
        jmp increment
        
        




