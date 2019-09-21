dir: DC "John"  
     DC "11111"   
     DC "Nick"  
     DC "22222"   
     DC "Sara" 
     DC "11111"  
     DC "Nick" 
     DC "33333"  
     DD 0 

s1: DC "Enter a phone or name\nto search for:\0"
addi x6, x0, 0
loop: 
addi x5, x0, s1
ecall x18, x5, 4
ecall x19, x0, 5 
ld x7, dir(x6)
beq x19, x7, print
addi x6, x6, 8
beq x0, x0, loop

print: ecall x30, x19, 4
       addi x6, x6, 8
       ecall x31, x7, 4
       addi x6, x6, -8
       addi x6, x6, 8
       beq x0, x0, loop