org 100h 

jmp main 

inputString db 'Asa zD'
outputString db 'x x x x'

main: 
      push offset inputString 
      push outputString-inputString
      
      call function 
      int 20h 
      
function: mov BP, SP
          mov CX, [BP+2]
          mov SI, [BP+4]
          mov BX, CX
          add BX, SI
          mov DI, BX
          cld
          mov DX, 0h
compare: lodsb
         cmp AL, 61h 
         jb else
then1: cmp AL, 7Ah 
       jbe then2 
else:  jmp nextElem
then2: inc DX 
       stosb
        
nextElem: loop compare
       ret 
 
 
     
                    
          
     