STACK: EQU 0x100000
       lui sp, STACK >> 12
     
       ;Push the value of 1 onto the stack
       addi x5, x0, 1
       sd x5, 0(sp)
       addi sp, sp, -8

       ;Push the value of 2 onto the stack
       addi x5, x0, 2
       sd x5, 0(sp)
       addi sp, sp, -8
       
       ;Pop the top element from the stack
       addi sp, sp, 8
       ld x5, 0(sp)