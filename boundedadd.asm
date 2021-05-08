global badd
section .text
badd:
add 		rdx, rcx
mov			rax, rdx
mov			r8, 0xffffffffffffffff
cmovc		rax, r8
ret


