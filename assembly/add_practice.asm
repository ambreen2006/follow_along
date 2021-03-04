    extern printf
  
    segment .data
a dq 151
b dq 310
sum dq 0  
fmt  db "sum=%d", 0x0a, 0 

  segment .text
  global main

main:
  push rbp
  mov rbp, rsp
  sub rsp, 16
  mov rax, 9
  add [a], rax
  mov rax, [b]
  add rax, 10
  add rax, [a]
  mov [sum], rax
  lea rdi, [fmt]
  mov edx, 0
  mov rsi, [sum]
  xor eax, eax
  call printf
  
  mov rax, 0
  leave
  ret
