s0: DC "n! Enter n:"
s1: DC "! ="

addi x5, x0, s0
ecall x1, x5, 4
ecall x6, x0, 5
add x19, x6, x0
add x7, x6, x0
loop:
addi x7, x7, -1 
beq x7, x0, exit 
mul x6, x6, x7
beq x0, x0, loop

exit:


addi x18, x0, s1
ecall x1, x19, 0
ecall x19, x18, 4 
ecall x18, x6, 0
