
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,07h
mov bl,02h
div bl
cmp ah,00h
je level
level:mov status, 'Ev'

mov status, 'Od'
jmp exit
exit: 

ret

status dw dup(0)



