`timescale 1ns/1ps 
module counter_test;
reg clk; 
reg rst; 
reg m;
wire [31:0] count;
counter counter1(clk,rst,m,count); 
initial 
clk = 0;
always #2 clk = ~clk;
initial begin
  rst = 0;
#5;
  m = 0;
  #200;
  m= 1; 
  #200;
  rst = 1;
  m = 0; 
  #100;
  rst = 0;
end
initial
#2000 $finish;
endmodule

