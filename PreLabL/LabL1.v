module LabL1;
reg a,b,c;
wire z;
integer i, j, k;

yMux1 Mux(z,a,b,c);

initial
begin
for (i = 0; i < 3; i = i + 1)
begin
for (j = 0; j < 3; j = j + 1)
begin
for (k = 0; k < 3; k = k + 1)
begin
a = i; 
b = j; 
c = k;
#1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
end
end
end
$finish;
end
endmodule