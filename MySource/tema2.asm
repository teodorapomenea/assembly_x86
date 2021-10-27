org 100h

  mov  SI, offset inputArray
  mov  DI, offset outputArray
  cld
Compare:
  lodsw
  cmp  AX, 1000h
  jnl Bigger
  stosw
Bigger:
  cmp  SI, offset outputArray 
  jb   Compare

  int  20h

inputArray    dw 78A3h,0145h, 1105h, 0497h, 8724h,  0F510h
outputArray   dw 6 dup (0)