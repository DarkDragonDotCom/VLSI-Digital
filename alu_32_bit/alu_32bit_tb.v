module alu_32bit_tb;
reg [31:0]a,b;
reg [2:0]sel;
wire [31:0]y;
alu_32bit a0(a,b,sel,y);
initial begin
a=32'hFFFF0000;
b=32'h0000FFFF;
sel=3'd0;

#90
a=32'hF0F0F0F0;
b=32'h0F0F0F0F;
#90; $stop;
$finish;
end
always #10 sel=sel+1;
endmodule
