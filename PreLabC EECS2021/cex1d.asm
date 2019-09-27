s3: DC "prime"
s4: DC "not prime"
s2: DC "Divisors:"
s0: DC "Find all divisors."
s1: DC "Enter i:"

s: DM 10
addi x31, x0, 0
addi x30, x0, 0
addi x5, x0, s0
ecall x0, x5, 4
addi x6, x0, s1
ecall x0, x6, 4
ecall x7, x0, 5
addi x19, x0, s2
ecall x0, x19, 4 
addi x20, x0, 0
add x8, x7, x0
addi x22, x0, 2
loop: beq x8, x0, count 
rem x9, x7, x8
addi x8, x8, -1
beq x9, x20, print
beq x0, x0, loop

print: addi x8, x8, 1 
sd x8, s(x30)
addi x30, x30, 8
addi x31, x31, 1
addi x8, x8, -1
beq x0, x0, loop

count: beq x22, x31, prime
      addi x23, x0, s4
      ecall x0, x23, 4
      beq x0, x0, end

prime: addi x24, x0, s3
       ecall x0, x24, 4
       beq x0, x0, end

end:
