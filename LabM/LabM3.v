module labM;
reg[4:0] rs1, rs2, wn;
reg[31: 0] wd;
wire[31 : 0] rd1, rd2;
reg clk, w, flag;
integer i;

rf #(32) myRF(rd1, rd2, rs1, rs2, wn, wd, clk, w); 


initial 
begin 
flag = $value$plusargs("w=%b", w);
for (i = 0; i < 32; i = i + 1) 
begin 
clk = 0;  
wd = i * i; 
wn = i; 
clk = 1;  
#1; 
end 
$finish;
end 
endmodule