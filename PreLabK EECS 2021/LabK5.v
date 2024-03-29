module labK;
wire z;
integer i, j;
reg a, b, expect;
not my_not(tmp, b);
and my_and(z, a, tmp);
initial
begin
for (i = 0; i < 2; i = i + 1)
begin
a = i; b = j;
expect = i & ~b;
#1; // wait for z
if (expect === z)
$display("PASS: a=%b b=%b z=%b", a, b, z);
else
$display("FAIL: a=%b b=%b z=%b", a, b, z);
end
$finish;

end
endmodule