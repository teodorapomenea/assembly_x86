org 100h

init: mov ax,1234h
      mov bx,8004h
      mov cx,072Fh
        
      mov dx,ax

compare1: cmp dx,bx
          jbe compare2
          mov dx,bx
          
compare2: cmp dx,cx
          jbe exit
          mov dx,cx
          
exit: int 20h

