num: DF 1.0 ;Used for calculating the factorial of n adding one every iteration for the next multiplier
;num also used for the numberator of e every time a number is added to the total
add: DF 1.0 ;Used for the total value of the factorial
tot: DF 1.5 ;Used for the total value of e
fact: DF 0.0 ;Used for the factorial calculation to store the current number in the calulation adding one from num every time

fld f0, num(x0) ;Loads num into register
fld f2, add(x0) ;Loads add into register
fld f3, tot(x0) ;Loads tot into register
fld f4, fact(x0) ;Loads fact into register

addi x5, x0, 1 ;The current value of n when calculating e
addi x6, x0, 0 ;Counter used to calculate when to stop calculating current factorial
addi x18, x0, 20 ;The Amount of percision you want e to be


loop:               ;Will Calculate the current factorial at value n
beq x5, x18, end    ;Will check to see to stop the porgram if the current value of n is the percison we want
fadd.d f4, f4, f0   ;Adds one to the factorial multiplier
fmul.d f2, f2, f4   ;Multiplies the factorial multiplier 
addi x6, x6, 1      ;Adds one to the counter to see when to stop multiplying to the factorial
beq x5, x6, addtot  ;If the conter is equal to the current value of n then add to total
beq x0, x0, loop    ;If not continue multiplying

addtot: fdiv.d f5, f0, f2 ;Divides the numerator by the denominator which is the factorial of n
fadd.d f3, f3, f5 ;Adds it to the total
addi x5, x5, 1 ;One for resetting the factorial values below
addi x6, x0, 0 ;Resets the counter for the factorial
fcvt.l.d x7, f2 ;Turn to double to reset
fcvt.l.d x8, f4 ;Turn to double to reset
addi x7, x0, 1 ;Reset back to 1
addi x8, x0, 1 ;Reset back to 1
fcvt.d.l f2, x7 ;Turn back to FP num
fcvt.d.l f4, x8 ;Turn back to FP num
beq x0, x0, loop ;Go back to the loop

 
end:    
