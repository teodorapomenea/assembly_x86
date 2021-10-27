org 100h

jmp main 

letters db 'GDDhA AsZa'

main: mov DX, 0h
      push offset letters
      push (main-letters)
      call function 
      
      int 20h
      
function: mov BP, SP 
          mov CX, [BP+2]
          mov SI, [BP+4]
          
compare:  lodsb 
          cmp AL, 41h
          jb else
then1: cmp AL, 5Ah 
       jbe then2 
       jmp nextElem
else: 
      jmp nextElem 
then2: inc DX 
nextElem: loop compare 
     ret      
          
          