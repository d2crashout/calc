section .data
    prompt_num1     db "Choose a number: ", 0
    prompt_num2     db "Choose another number: ", 0
    prompt_op       db "Choose operation (1.Addition 2.Subtraction): ", 0
    fmt_in          db "%d", 0
    fmt_out         db "Result: %d", 10, 0

section .bss
    num1 resd 1
    num2 resd 1
    op   resd 1
    result resd 1

section .text
    global main
    extern printf, scanf

main:
    ; Prompt and read num1
    sub rsp, 8
    mov rdi, prompt_num1
    xor eax, eax       ; zero rax for variadic functions
    call printf
    add rsp, 8

    sub rsp, 8
    mov rdi, fmt_in
    mov rsi, num1
    xor eax, eax
    call scanf
    add rsp, 8

    ; Prompt and read num2
    sub rsp, 8
    mov rdi, prompt_num2
    xor eax, eax
    call printf
    add rsp, 8

    sub rsp, 8
    mov rdi, fmt_in
    mov rsi, num2
    xor eax, eax
    call scanf
    add rsp, 8

    ; Prompt and read operation
    sub rsp, 8
    mov rdi, prompt_op
    xor eax, eax
    call printf
    add rsp, 8

    sub rsp, 8
    mov rdi, fmt_in
    mov rsi, op
    xor eax, eax
    call scanf
    add rsp, 8

    ; Load values and compute
    mov eax, [op]
    cmp eax, 1
    je .add
    cmp eax, 2
    je .sub
    jmp .done

.add:
    mov eax, [num1]
    add eax, [num2]
    mov [result], eax
    jmp .print

.sub:
    mov eax, [num1]
    sub eax, [num2]
    mov [result], eax
    jmp .print

.print:
    sub rsp, 8
    mov rdi, fmt_out
    mov esi, [result]
    xor eax, eax
    call printf
    add rsp, 8

.done:
    mov eax, 0
    ret
