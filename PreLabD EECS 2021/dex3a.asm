addi x5, x0, 10 ;x
addi x6, x0, 5 ;y
jal x1, gcd
ecall x0, x5, 0
ebreak x0, x0, 0

gcd: blt x0, x6, recu
jalr x0, 0(x1)     
     
recu: rem x8, x5, x6  
add x5, x0, x6  
add x6, x0, x8
jal x0, gcd 

