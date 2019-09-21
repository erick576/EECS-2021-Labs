src: DD 1, 5, -7, 23, -5
src2: DD 3, -2, 4, 11, -7
c: DM 5 
add x5, x0, x0
loop:
     ld x6, src(x5)
     ld x7, src2(x5)
     beq x7, x0, exit
     add x18, x6, x7
      
     sd x18, c(x5)
     addi x5, x5, 8
     beq x0, x0, loop

exit: ebreak x0, x0, 0


