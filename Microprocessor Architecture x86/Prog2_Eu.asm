org 100h

mov cx, 0h
mov dx, 0h
mov ax, 0h
 
mov cx, 9800h
mov dx, 300Ah
          
mov ax, cx
add cl, dl
adc ch, dh

sub al, dl
sbb ah,dh

int 20h