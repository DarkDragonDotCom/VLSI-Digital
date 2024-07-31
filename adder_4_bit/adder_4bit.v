module adder_4bit(a,b,cin,sum);
input [3:0]a,b;
input cin;
output [4:0]sum;
assign sum=a+b+cin;
endmodule
