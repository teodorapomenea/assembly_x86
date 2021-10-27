org 100h

jmp start

sir db 'fsajdekodui'


start:	push offset sir
        push start-sir
        call subpr
        add SP, 4h
        int 20h

subpr: mov BP,SP
       mov CX, [BP+2h]
       mov SI, [BP+4h]
       mov DX, 0h 
       cld 
       
bucla: lodsb
       cmp AL,'a'
       je exista 
       cmp AL,'e'
       je exista  
       cmp AL,'i'
       je exista
       cmp AL,'o'
       je exista
       cmp AL,'u'
       je exista

increment: loop bucla
          
           ret
           
exista: inc DX
        jmp increment
        
        
