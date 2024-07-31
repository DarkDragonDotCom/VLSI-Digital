module srl_tb;
reg rst,en;
reg [1:0]sr;
wire q,qb;
srl s0(rst,en,sr,q,qb);
initial begin
rst=1; en=0; sr=2'b00;
#10; rst=0; en=1; sr=2'b10;
#10; sr=2'b00;
#10; sr=2'b01;
#10; sr=2'b00;
#10; sr=2'b11;
#10; sr=2'b00;
#10; $stop;
$finish;
end
endmodule
