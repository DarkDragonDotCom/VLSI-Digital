module srl(rst,en,sr,q,qb);
input rst,en;
input [1:0]sr;
output q,qb;
reg q,qb;
always@(*)
begin
if(rst)begin q=0;qb=1;end
else begin
if(en) begin
case(sr)
2'b00:begin q=q;qb=qb;end
2'b01:begin q=0;qb=1;end
2'b10:begin q=1;qb=0;end
2'b11:begin q=1'bZ;qb=1'bZ;end
endcase
end
end
end
endmodule
