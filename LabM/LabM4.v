module labM;

reg clk, read, write;
reg [31:0] address, memIn;
wire [31:0] memOut;

mem data(memOut, address, memIn, clk, read, write);

initial 
begin
write = 0; read = 1; address = 16; 
clk = 0;
memIn = 32'h1234567;
#4 read = 1;
#1 $display("Address %d contains %h", address, memOut); 
address = address + 4; 
#4 read = 0;
memIn = 32'h89abcdef;
#4 read = 1;
#1 $display("Address %d contains %h", address, memOut); 
#4;
write = 0; read = 1; address = 16; 
repeat (3) 
begin
#4 $display("Address %d contains %h", address, memOut); 
address = address + 4;
end
$finish;
end
always
begin
#4 clk = ~clk;
end

endmodule
