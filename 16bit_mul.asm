org 100h

num1 dw 1234h
num2 dw 5678h

start:
    mov ax, num1
    mov bx, num2
    mul bx         
    
    mov bx, dx
    mov cx, ax
    
   mov ah, bh
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle print_first_digit
    add ah, 7

print_first_digit:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bh
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle print_second_digit
    add ah, 7

print_second_digit:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bl
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle print_third_digit
    add ah, 7

print_third_digit:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bl
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle print_fourth_digit
    add ah, 7

print_fourth_digit:
    mov dl, ah
    mov ah, 02h
    int 21h
       
       
       
   
       
       
 mov bx, cx

    mov ah, bh
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle print_fifth_digit
    add ah, 7

print_fifth_digit:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bh
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle print_sixth_digit
    add ah, 7

print_sixth_digit:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bl
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle print_seventh_digit         
    add ah, 7

print_seventh_digit:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, bl
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle print_eigth_digit
    add ah, 7

print_eigth_digit:
    mov dl, ah
    mov ah, 02h
    int 21h      
       
       
       
       
       
    mov ah, 4Ch
    int 21h
             
             
 ret           