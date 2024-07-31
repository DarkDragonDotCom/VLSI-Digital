module alu_32bit(a,b,sel,y);
input [31:0]a,b;
input [2:0]sel;
output [31:0]y;
reg [31:0]y;
always@(a,b,sel)
begin
if(sel==3'd0)y=a+b;
else if(sel==3'd1)y=a-b;
else if(sel==3'd2)y=a*b;
else if(sel==3'd3)y=a/b;
else if(sel==3'd4)y=a&b;
else if(sel==3'd5)y=a|b;
else if(sel==3'd6)y=a^b;
else if(sel==3'd7)y=~a;
else y=32'dX;
end
endmodule
