module dlatch_tb;
reg en,d,rst;
wire q,qb;
dlatch d1(en,d,rst,q,qb);
initial begin
rst=1;
d=0;
en=0;
#10; rst=0;
en=1;
d=1;
#10; d=0;
#10; d=1;
#10; rst=0; en=0;
#20; $stop;
$finish;
end
endmodule
