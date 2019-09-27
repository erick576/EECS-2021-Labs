s0: DC "sum(1..n-1) Enter n:"
s1: DC "sum(1.."
s2: DC ")="

addi x5, x0, s0
ecall x1, x5, 4
ecall x6, x0, 5
addi x8, x0, -1
add x20, x6, x8
add x7, x6, x8
addi x9, x6, -2
addi x10, x0, 0
loop:
beq x9, x10, exit
add x7, x7, x9
addi x9, x9, -1
beq x0,x0, loop

exit:

addi x18, x0, s1
addi x19, x0, s2
ecall x1, x18, 4
ecall x18, x20, 0
ecall x20, x19, 4
ecall x19, x7, 0 