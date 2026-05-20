module booth_new(a,b,c,rst,clk);
parameter m=3;
parameter n=3;
parameter n1=m+n;
input rst,clk;
input [m:0]a,b;
output reg[n1+1:0]c;
reg[n1+2:0]A,S,P;
integer i;

always @(posedge clk)
if(rst)
begin
i=0;
A={a,4'b0,1'b0};
S={((~a)+1),4'b0,1'b0};
P={4'b0,b,1'b0};
end
else
begin
if(i<=m)
case(P[1:0])
2'b00:begin
if(P[n1+2]==1'b1)
P={1'b1,P[n1+2:1]};
else
P={1'b0,P[n1+2:1]};
i=i+1;
end 
2'b01:begin
P=P+A;
if(P[n1+2]==1'b1)
P={1'b1,P[n1+2:1]};
else
P={1'b0,P[n1+2:1]};
i=i+1;
end 
2'b10:begin
P=P+S;
if(P[n1+2]==1'b1)
P={1'b1,P[n1+2:1]};
else
P={1'b0,P[n1+2:1]};
i=i+1;
end 
2'b11:begin
if(P[n1+2]==1'b1)
P={1'b1,P[n1+2:1]};
else
P={1'b0,P[n1+2:1]};
i=i+1;
end 
endcase
else
c=P[n1+2:1];
end 
endmodule

