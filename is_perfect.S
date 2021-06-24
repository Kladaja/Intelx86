# Keszitette: Varga Klaudia (QBB82W)


.intel_syntax noprefix

.text
.global is_perfect
is_perfect:
    # fuggveny prologus
    push ebp
    mov ebp, esp

    push ebx

    mov ebx, 1  # sum := 1
    mov ecx, 2  # num := 2

loop:
    cmp ecx, dword ptr [ebp + 8]  # while num < value
    jge end

    mov eax, dword ptr [ebp + 8]
    mov edx, 0
    div ecx

    cmp edx, 0  # if value % num == 0
    jne jump

    add ebx, ecx  # sum := sum + num

jump:
    inc ecx  # num := num + 1
    jmp loop

end:
    mov eax, 0  # res := 0

    cmp ebx, 1  # if sum == 1
    je not_perfect

    cmp ebx, dword ptr [ebp + 8]  # if sum == value
    jne not_perfect

    mov eax, 1  # res := 1

not_perfect:

    pop ebx

    # fuggveny epilogus
    mov esp, ebp
    pop ebp
    
    ret
