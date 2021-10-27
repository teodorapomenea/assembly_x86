org 100h 
init: lea SI, inputString 
lea DI, outputString 
mov CX, charX-inputString 
cld    

compare: lodsb 
cmp AL, [charX] 
jne copyCurrent 
je copyCharY  

nextElem: loop compare
 
copyBack: dec SI 
dec DI 
xchg SI, DI 
mov CX, charx-inputString 
std 
repnz movsb 

end: int 20h
 
copyCurrent: stosb 
jmp nextElem   

copyCharY: mov AL, [charY] 
stosb 
jmp nextElem 

inputString db 'alpha beta' 
charX db 'a' 
charY db 'A' 
outputString db 20 dup('X')
