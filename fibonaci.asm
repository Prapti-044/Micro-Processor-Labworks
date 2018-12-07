
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,00h
mov bx,01h
mov cx,0010h
start:
     mov dx,ax
     add dx,bx
     mov ax,bx
     mov bx,dx
     loop start
mov result,dx
ret            
result dw ?




