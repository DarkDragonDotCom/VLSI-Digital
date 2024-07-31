module boothmultiplier_tb;
reg [3:0]x;
reg [3:0]y;
wire [7:0]z;
boothmultiplier b0(x,y,z);
initial begin
x=4'b1111; y=4'b0011;
#10; x=4'b1011; y=4'b1011;
#10; x=4'b0101; y=4'b1000;
#10 $stop;
$finish;
end
endmodule
