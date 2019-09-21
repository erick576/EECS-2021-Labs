src: DD 121, 33, -5, 242, -45, -12, 0
     add x6, x0, x0
     ld x31, src(x6)
     add x30, x0, x0
     ld x5, src(x6)
loop:ld x19, src(x6)
     beq x19, x0, revalue 
     addi x21, x0 , 8
     add x20, x6, x21
     ld x18, src(x20)
     bge x18, x5, skip
     
     add x5, x18, x0
     sd x5, src(x30)
     add x7, x6, x0
skip:
     addi x6, x6, 8    
     beq x0, x0, loop
revalue: sd x31, src(x7)
         beq x6, x0, end
end: ebreak x0, x0, 0


