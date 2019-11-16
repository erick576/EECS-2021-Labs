module LabL6;
output[31:0] z; 
output cout; 
reg[31:0] a, b; 
reg cin, ok;
reg [31:0] expect; 
yAdder my_mux(z, cout, a, b, cin);

initial
begin  
a = $random;  
b = $random;
cin = 0; 
expect = a + b + cin; 
ok = 0;
if (cin === cout) 
 ok = 1;    
#1 $display("a=%b b=%b cin=%b z=%b expect=%b cout=%b ok=%b", a, b, cin, z, expect,  cout, ok);
$finish;
end
endmodule
 

  
