org 100h
            

lea si,value
lea di,result 
mov ax,len
mov bx,02h
div bx
mov cx,ax

start:
    
    call fib
    loop start
    
    fib proc near
        mov bx,0h
        mov dx,01h
        mov ax,[si]
        cmp ax,0h
        ja fibb

        
        fibb:
            add bx,dx
            mov temp,bx
            mov bx,dx
            mov dx,temp
            dec ax
            cmp ax,1h
            ja fibb
            mov [di],dx
            inc si
            inc si
            inc di
            inc di
            ret
       
        
            
value dw 08h, 05h, 06h
len  = ($-value)
result dw 3 dup(0)
temp dw 0