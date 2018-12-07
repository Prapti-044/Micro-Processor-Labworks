
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,num 
mov bx,num
call factorial
factorial proc near
    mov cx,bx
    start:
        dec bx
        mov dx,bx
        mul dx
        cmp bx,1h
        je next
        loop start
        
ret 
next:
mov fac,ax           
factorial endp
num dw 005h
fac dw dup(0)



