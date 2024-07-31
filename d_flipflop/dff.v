module dff(clk,rst,d,q,qb);
input clk,rst,d;
output q,qb;
reg q,qb;
always@(posedge clk)
begin
if(rst==1)begin q=0; qb=1;end
else begin q=0; q=~d;end
end
endmodule
