module LabL7;
output signed [31:0] z; 
output cout; 
reg signed [31:0] a, b; 
reg cin, ok;
reg signed [31:0] expect; 
yAdder my_mux(z, cout, a, b, cin);

initial
repeat (10) 
begin  
a = $random;  
b = $random;
cin = 0;
expect = a + b + cin; 
ok = 0;
if (cin == 0) 
     begin
     ok = 1;
     end 
#1 $display("a=%b b=%b cin=%b z=%b expect=%b cout=%b ok=%b", a, b, cin, z, expect,  cout, ok);
$finish;
end
endmodule
 

  