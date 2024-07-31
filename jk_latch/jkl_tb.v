module jkl_tb;
reg rst,en;
reg [1:0]jk;
wire q,qb;
srl j0(rst,en,jk,q,qb);
initial begin
rst=1; en=0; jk=2'b00;
#10; rst=0; en=1; jk=2'b10;
#10; jk=2'b00;
#10; jk=2'b01;
#10; jk=2'b00;
#10; jk=2'b11;
#10; jk=2'b00;
#10; $stop;
$finish;
end
endmodule
