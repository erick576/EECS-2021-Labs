module labK;
reg [31:0] x; // a 32-bit register
reg [1:0] one;
reg [2:0] two;
reg [3:0] three;
initial
begin
x = 32'hffff0000;
x = x + 2;
one = &x;
$display("time = %5d, one = %b", $time, one);
two = x[1:0];
$display("time = %5d, two = %b", $time, two);
three = {one, two};
$display("time = %5d, three = %b", $time, three);
$finish;
end
endmodule