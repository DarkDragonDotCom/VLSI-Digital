module adder_4bit_tb;
reg [3:0]a,b;
reg cin;
wire [4:0]sum;
adder_4bit a0(a,b,cin,sum);
initial begin
a=4'b1001;b=4'b1101;cin=0;
#10; a=4'b1101;b=4'b1011;cin=1;
#10; end
endmodule
