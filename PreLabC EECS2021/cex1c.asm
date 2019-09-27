s2: DC "Divisors:"
s0: DC "Find all divisors."
s1: DC "Enter i:"

addi x5, x0, s0
ecall x0, x5, 4
addi x6, x0, s1
ecall x0, x6, 4
ecall x7, x0, 5
addi x19, x0, s2
ecall x0, x19, 4 
addi x20, x0, 0
add x8, x7, x0
loop: beq x8, x0, end 
rem x9, x7, x8
addi x8, x8, -1
beq x9, x20, print
beq x0, x0, loop
print: addi x8, x8, 1 
ecall x0, x8, 0
addi x8, x8, -1
beq x0, x0, loop

end:
