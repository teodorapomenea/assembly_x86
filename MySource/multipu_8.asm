
org 100h 
jmp main
sir dw 16h,08h,90h,5a02h

main: push offset sir
      push (main-sir)/2
      call mult
      add SP,4h
      int 20h
      
mult: mov BP,SP
      mov CX, [BP+2h]
      mov SI, [BP+4h]
      

bucla: lodsw
       test AX,7h
       jz este
       
next: loop bucla
      ret
      
este: inc DX
      jmp next
