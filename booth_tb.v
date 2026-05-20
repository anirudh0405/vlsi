module tb;
parameter m=3;
parameter n=3;
reg[m:0] a,b;
parameter n1=m+n;
wire[n1+2:1]c;
reg rst,clk;
booth_new uut(a,b,c,rst,clk);
initial
begin
clk=0;
#10;rst=1;
#10;a=-3;b=4;
#10;rst=0;
#200 $finish;
end
always #2 clk=~clk;
endmodule

