module srff_tb;
reg rst,clk;
reg [1:0]sr;
wire q,qb;
srff s0(rst,clk,sr,q,qb);
initial begin
rst=1; clk=0;sr=2'b00;
#10; rst=0; sr=2'b10;
#10; sr=2'b00;
#10; sr=2'b01;
#10; sr=2'b00;
#10; sr=2'b11;
#10; sr=2'b00;
#10 $stop;
$finish;
end
always #5 clk=~clk;
endmodule

