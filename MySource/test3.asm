

org 100h


lea BX , numere

mov AL , [BX + 4h]

add AL , [BX]

numere     db      41h , 0A2h , 77h , 0F1h , 19h , 0CCh 

 int 20h





