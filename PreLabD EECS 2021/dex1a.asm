s0: DC "Enter Unsigned Integer:"

STACK: EQU 0x100000
       lui sp, STACK >> 12
       
       addi x5, x0, s0
       ecall x0, x5, 4
       ecall x6, x0, 5
       addi x7, x0, 2
       addi x30, x0, 0

loop1: div x8, x6, x7
       rem x18, x6, x7
       add x6, x8, x0 
       sd x18, 0(sp) ;push
       addi x30, x30, 1
       addi sp, sp, -8 ;push
       beq x8, x0, loop2
       beq x0, x0, loop1

loop2: addi sp, sp, 8
ld x19, 0(sp)
ecall x19, x19, 0
addi x30, x30, -1
beq x30, x0, end
beq x0, x0, loop2


end:
       
       
       
