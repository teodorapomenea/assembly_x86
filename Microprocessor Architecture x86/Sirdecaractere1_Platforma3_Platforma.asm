org 100h    

init: lea bx, inputString 
      mov si, 0h
      mov cx, charX-inputString
      mov dx, 0h     
      mov ah, [charY]  
          
compare: mov al,[bx+si]
         cmp al,[charX]
         je replace 
nextElem:inc si
         loop compare
         
         int 20h

replace: mov [bx+si],ah
         inc dx
         jmp nextElem
         
         
inputString db 'felix o sa aiba zece la sda'
charX db 'e'
charY db 'm'