src: DD -1, 55, -3, 7, 0
     add x6, x0, x0
     ld x5, src(x6)
loop:ld x19, src(x6)
     beq x19, x0, end
     addi x21, x0 , 8
     add x20, x6, x21
     ld x18, src(x20)
     bge x5, x18, skip
     
     add x5, x18, x0
     
skip:sd x19, dst(x6)
     addi x6, x6, 8    
     beq x0, x0, loop
     
end: ebreak x0, x0, 0
dst: DM 1   