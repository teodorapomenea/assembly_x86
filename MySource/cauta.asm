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
       mov SI, [BP+4h]
       mov CX, [BP+2h]
       mov DX, 0h 
       cld 
       
bucla: lodsb
       cmp AL, [val]
        
       je exista

increment: loop bucla
          
           ret
           
exista: inc DX
        jmp increment
        
        
