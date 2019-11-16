module LabL3;
output [31:0] z; 
reg c;
reg[31:0] a,b; 
yMux #(.SIZE(32)) my_mux(z, a, b, c);

initial
repeat (500) 
begin  
a = $random;   
b = $random;   
c = $random % 2;  
#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
$finish;
end
endmodule