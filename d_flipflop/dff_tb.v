module dff_tb;
reg clk,rst,d;
wire q,qb;
dff d0(clk,rst,d,q,qb);
initial begin
rst=1; d=0; clk=0;
#10; rst=0; d=1;
#10; d=0;
#10; d=1;
#10; d=0;
#10; d=1;
#10; $stop;
$finish;
end
always #5 clk=~clk;
endmodule

