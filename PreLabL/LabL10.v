module labL;
reg [31:0] a, b;
reg [31:0] expect;
reg [2:0] op;
wire ex;
wire [31:0] z;
reg ok, flag;

yAlu mine(z, ex, a, b, op);

initial
begin
repeat (10)
begin
a[31:0] = $random;
b[31:0] = $random;
flag = $value$plusargs("op=%d", op);
ok = 0;
if(op === 0) 
expect[31:0] = a & b;
else if(op === 1)
expect[31:0] = a | b;
else if(op === 2)
expect[31:0] = a + b;
else if(op === 6)
expect[31:0] = a + (~b) + 1;
else 
$display("Incorrect");
#1;
// Compare the circuit's output with "expect"
if(expect === z)
ok = 1;
if(ok === 1) 
$display("PASS: a=%b b=%b expect=%b z=%b ok=%b", a, b, expect, z, ok);
else
$display("FAIL: a=%b b=%b expect=%b z=%b ok=%b", a, b, expect, z, ok);
// and set "ok" accordingly
// Display ok and the various signals
$finish;
end
end
endmodule