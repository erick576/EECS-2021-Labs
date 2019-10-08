s0: DC "12+34-*"
s1: DC "+"
s2: DC "-"
s3: DC "/"
s4: DC "*"
ld x18, s1(x0)
ld x19, s2(x0)
ld x20, s3(x0)
ld x21, s4(x0)


STACK: EQU 0x100000
       lui sp, STACK >> 12
       addi x5, x0, s0
       addi x7, x0, 0

loop1: lb x6, 0(x5)
       beq x6, x0, end
       beq x6, x18, add
       beq x6, x19, sub
       beq x6, x20, div
       beq x6, x21, mul
       sd x6, 0(sp)
       addi sp, sp, -8
       addi x5, x5, 1
       beq x0, x0, loop1


add: addi sp, sp, 8
ld x8, 0(sp)
addi sp, sp, 8
ld x9, 0(sp)
add x30, x9, x8
sd x30, 0(sp)
addi sp, sp, -8
addi x5, x5, 1
beq x0, x0, loop1

sub: addi sp, sp, 8
ld x8, 0(sp)
addi sp, sp, 8
ld x9, 0(sp)
sub x30, x9, x8
sd x30, 0(sp)
addi sp, sp, -8
addi x5, x5, 1
beq x0, x0, loop1

div:addi sp, sp, 8
ld x8, 0(sp)
addi sp, sp, 8
ld x9, 0(sp)
div x30, x9, x8
sd x30, 0(sp)
addi sp, sp, -8
addi x5, x5, 1
beq x0, x0, loop1

mul:addi sp, sp, 8
ld x8, 0(sp)
addi sp, sp, 8
ld x9, 0(sp)
mul x30, x9, x8
sd x30, 0(sp)
addi sp, sp, -8
addi x5, x5, 1
beq x0, x0, loop1

end: addi x30, x30, 96

       

