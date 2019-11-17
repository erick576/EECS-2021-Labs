module labM; 
reg [31:0] PCin; 
reg RegDst, RegWrite, clk, ALUSrc; 
reg [2:0] op; 
wire [31:0] wd, rd1, rd2, imm, ins, PCp4, z; 
wire [25:0] jTarget; 
wire zero; 
yIF myIF(ins, PCp4, PCin, clk); 
yID myID(rd1, rd2, imm, jTarget, ins, wd, RegDst, RegWrite, clk); 
yEX myEx(z, zero, rd1, rd2, imm, op, ALUSrc); 
assign wd = z; 
initial 
begin 
PCin = 128; 
repeat   (11)   
begin      
clk = 1; #1; 
op = 3'b010;
if(ins[31:26] ==0)
begin
RegDst = 1;
RegWrite = 1;
ALUSrc = 0;
end
else if(ins[31:26] == 2)
begin
RegDst = 0;
RegWrite = 0;
ALUSrc = 1;
end 
else if (ins[31:26] == 6'h4)	
begin
RegDst = 0;
RegWrite = 0;
ALUSrc = 0;
end
else
begin
RegDst = 0;
RegWrite = 1;
ALUSrc = 1;
end       
clk = 0; #1;  
#1;
$display("[0x%h]rd1=%d rd2=%d imm=%h jTarget=%h z=%d zero=%h", PCin, rd1, rd2, imm, jTarget, z, zero);
#1;
PCin   =   PCp4;   
end   
$finish;   
end 
endmodule 