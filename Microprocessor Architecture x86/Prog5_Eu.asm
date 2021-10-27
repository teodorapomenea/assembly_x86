org 100h

init: mov ax, 0001h
      mov bx, 1234h
      mov cx, 5000h 
    
compareaxbx: cmp ax,bx
             jb comparebxcx
             mov bx, ax
             
comparebxcx: cmp bx,cx
             ja exit
             mov bx,cx
           
exit: int 20h