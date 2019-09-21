c1: DC "What is your name?"
c2: DC "Hello "
c3: DC "!"
addi x30, x0, c1 ;your name
ecall x0, x30, 4
ecall x5, x0, 9
ld x20, 0(x0)
ld x18,c2(x0)
ld x19, c3(x0)

ecall x0, x18, 3 
ecall x0, x20, 3 
ecall x0, x19, 3

