s0: DC "Enter a string:"
s1: DC "Is A Palindrome"
s2: DC "Is Not A Palindrome"
addi x21, x0, s1
addi x19, x0, s2
addi x20, x0, 0
STACK: EQU 0x100000
       lui sp, STACK >> 12
       addi x30, x0, s0
       ecall x0, x30, 4 ;out
       addi x5, x0, s3 
       ecall x5, x0, 9 ;input string
      

loop1: lb x6, 0(x5)
       beq x6, x0, chg
       addi x5, x5, 1
       sd x6, 0(sp)
       addi sp, sp, -8
       addi x20, x20, 1
       beq x0, x0, loop1
       
chg:    sub x5, x5, x20
         beq x0, x0, loop2

loop2: beq x20, x0, end
       addi sp, sp, 8
       ld x8, 0(sp)
       lb x18, 0(x5)
       addi x5, x5, 1
       addi x20, x20, -1
       beq x8, x18, loop2
       bne x8, x18, end1



end1: ecall x0, x19, 4
      ebreak x0, x0, 0

end: ecall x0, x21, 4
     ebreak x0, x0, 0


s3: DM 1




       
       
       
