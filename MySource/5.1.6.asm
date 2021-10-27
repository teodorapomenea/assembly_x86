
org 100h  

jmp main


sursa      db 'AbcDefGhi'
destinatie db 20 dup('X')

main: lea SI, sursa
      lea DI, destinatie   
	  mov CX, destinatie-sursa   
	  cld
	  
	
	  push DI
	  push CX  
	  push SI
	  call compare
	  add SP,6h 
	 
	  int 20h


compare: mov BP, SP
         mov 