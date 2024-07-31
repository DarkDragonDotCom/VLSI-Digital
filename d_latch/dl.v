module dlatch(en,d,rst,q,qb);
input en,d,rst;
output q,qb;
reg q,qb;
always@(*)
begin
if(rst==1)begin q=0; qb=1;end
else begin
if(en==1)begin q=d; qb=~d;end
else begin q=q; qb=qb;end
end
end
endmodule
