org 100h

init: mov AX,0h
      mov BX,0h
      
part1: mov AX, 1A26h
        shr AX, 3h 
       
                   
part2: mov BX, 553Fh
        shr BX, 5h
      
        

part3: xor AX,BX
        int 20h
           