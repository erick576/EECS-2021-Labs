module LabL4;
output [31:0] z; 
reg[1:0] c;
reg[31:0] a0, a1, a2, a3; 
yMux4to1 #(.SIZE(32)) my_mux(z, a0, a1, a2, a3, c);

initial
repeat (10) 
begin  
a0 = $random;   
a1 = $random; 
a2 = $random;  
a3 = $random;
c = $random;  
#1 $display("a0=%b a1=%b a2=%b a3=%b c=%b z=%b", a0, a1, a2, a3, c, z);
$finish;
end
endmodule