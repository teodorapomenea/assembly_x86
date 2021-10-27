 org 100h
 jmp main
 
 sir dw 1015h, AABBh, 1234h , 1654h
 
 main: ;lea BX, array
       ;mov CX, (main-array)/2
       ;push BX
       ;push CX
 
       push offset sir
       push (main-sir)/2
       call suma 
       add SP,4h
       
       int 20h
       
 suma: mov BP,SP
       mov SI, 0h 
       mov AX, 0h
       mov DX, 0h
       mov CX, [BP+2]
       mov BX, [BP+4] 
      
       

 nextElem:  add AX, [BX+SI]
            adc DX, 0h
            add SI, 2h
            loop nextElem
            
 ret