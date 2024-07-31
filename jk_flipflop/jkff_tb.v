module jkff_tb;
reg rst,clk;
reg [1:0]jk;
wire q,qb;
srff j0(rst,clk,jk,q,qb);
initial begin
rst=1; clk=0;jk=2'b00;
#10; rst=0; jk=2'b10;
#10; jk=2'b00;
#10; jk=2'b01;
#10; jk=2'b00;
#10; jk=2'b11;
#10; jk=2'b00;
#10 $stop;
$finish;
end
always #5 clk=~clk;
endmodule

