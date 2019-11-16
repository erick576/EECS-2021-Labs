module LabL5;
output z, cout; 
reg a, b, cin; 
integer i, j, k;
yAdder1 my_mux(z, cout, a, b, cin);

initial
begin
for(i = 0; i < 2; i = i + 1)
begin
for(j = 0; j < 2; j = j + 1)
begin
for(k = 0; k < 2; k = k + 1)
begin
a = i; b = j; cin = k; 
#1 $display("a=%b b=%b cin=%b z=%b cout=%b", a, b, cin, z, cout);
end
end
end
$finish;
end
endmodule