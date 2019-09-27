a1: DF 1.21, 5.85, -7.3, 23.1, -5.55
a2: DF 3.14, -2.1, 44.2, 11.0, -7.77
a3: DF 0.0
a4: DM 1
addi x5, x0, 0
addi x6, x0, 0
addi x7, x0, 5
fld f4, a3(x0)
loop: beq x7, x6, store
      fld f1, a1(x5)
      fld f2, a2(x5)
      fmul.d f3, f1, f2
      fadd.d f4, f4, f3
      addi x5, x5, 8
      addi x6, x6, 1
      beq x0, x0, loop
store: fsd f4, a4(x0)
       beq x0, x0, exit


             