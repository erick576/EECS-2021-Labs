c1: DC "Enter Integer Value:"
c2: DC "Enter Memory Address:"
addi x5, x0, c1
addi x6, x0, c2

loop: ecall x7, x5, 4
ecall x18, x0, 5

ecall x19, x6, 4
ecall x20, x0, 5
beq x0, x0, store

store: sd x18, 0(x20)
beq x0, x0, loop