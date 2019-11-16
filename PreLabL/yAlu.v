module yAlu(z, ex, a, b, op); 
input [31:0] a, b; 
input [2:0] op; 
input condition;
output [31:0] z; 
output ex;   
assign ex = 0;
assign slt[31:1] = 0;
// not supported assign ex = 0;   
// not supported 
// instantiate the components and connect them 
// Hint: about 4 lines of code 

xor(condition, a[31], b[31]);
wire[31:0] OPand , OPor , sub_add;
or one_or[31:0] (OPor, a , b);
and one_and[31:0] (OPand, a , b);

yArith #(32) myArith(sub_add, null, a, b, op[2]);
yMux4to1 #(32) my_Mux(z, OPand, OPor, sub_add, slt[0], op[1:0]);
endmodule