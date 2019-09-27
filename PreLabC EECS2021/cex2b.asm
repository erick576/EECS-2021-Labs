e: DF 2.71828182845904523536
num: DF 1.0
div: DF 2.0
add: DF 1.0
tot: DF 1.5
fact: DF 0.0
fld f0, num(x0)
fld f1, div(x0)
fld f2, add(x0)
fld f3, tot(x0)
fld f4, fact(x0)
addi x5, x0, 1
addi x6, x0, 0
addi x18, x0, 20
loop:
beq x5, x18, end
fadd.d f4, f4, f0 
fmul.d f2, f2, f4
addi x6, x6, 1
beq x5, x6, addtot
beq x0, x0, loop

addtot: fdiv.d f5, f0, f2 
fadd.d f3, f3, f5
addi x5, x5, 1
addi x6, x0, 0
fcvt.l.d x7, f2
fcvt.l.d x8, f4
addi x7, x0, 1
addi x8, x0, 1
fcvt.d.l f2, x7
fcvt.d.l f4, x8
beq x0, x0, loop

 
end:    