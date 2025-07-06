org  0x100

section .text

start:
    ;Вивести "Result: "
    mov dx, msg
    mov ah, 09h
    int 21h

    ;Обчислення: (b - c) + a
    mov al, 3      ; b
    sub al, 2      ; - c
    add al, 5      ; + a

    ;Перетворити число (0..9) в ASCII
    add al, '0'    ; якщо >9 — не спрацює

    ;Вивести результат
    mov dl, al
    mov ah, 02h
    int 21h

    ;Завершення
    mov ax, 4C00h
    int 21h

msg db 'Result: $'