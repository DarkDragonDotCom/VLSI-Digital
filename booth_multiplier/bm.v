module boothmultiplier(x,y,z);
input signed [3:0]x,y;
output signed [7:0]z;
reg signed [7:0]z;
reg [1:0]temp;
reg [3:0]y1;
reg e1;
integer i;
always@(x,y)
begin
e1=1'b0;
z=8'b0;
y1=(~y)+4'b0001;
for(i=0;i<4;i=i+1)
begin
temp={x[i],e1};
case(temp)
2'd2:z[7:4]=z[7:4]+y1;
2'd1:z[7:4]=z[7:4]+y;
default:begin
end
endcase
z=z>>1;
z[7]=z[6];
e1=x[i];
end
if(y==4'd8)
z=-z;
end
endmodule
