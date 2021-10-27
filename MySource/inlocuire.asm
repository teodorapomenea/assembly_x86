org 100h

jmp start

sir db 14h, 55h, 98h, 0AAh, 55h , 28h

val db 55h



start:	lea BX, sir
        mov CX, val-sir
        cld
        mov SI, 0h
        mov DX, 0h


bucla: mov AL, [BX+SI]
       cmp AL, [val]

  
       je exista

increment: inc SI
           loop bucla
          
           int 20h
           
exista: inc DX
        jmp increment
        
        
