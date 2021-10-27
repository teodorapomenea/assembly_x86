org 100h
jmp main  

dataset dw 12h, 18h, 1Ah, 16h, 08h, 08h, 12h
windowSize dw 3h

main: lea BX, dataset
mov SI, 2h
mov CX, (windowSize-dataset)/2-2 

process: push [BX+SI-2]
push [BX+SI]
push [BX+SI+2]
call average
mov [BX+SI], AX
add SP, 6h
add SI, 2h
loop process
int 20h
 
average: mov BP, SP
mov AX, [BP+2]
mov DX, 0h
add AX, [BP+4] 
adc DX, 0h
add AX, [BP+6]
adc DX, 0h
div word ptr windowSize
ret