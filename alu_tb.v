odule tb;
reg[31:0]a,b;
reg[2:0]opcode;
wire[63:0]c;
ALU_32 uut(a,b,opcode,c);
initial
begin
a=32'hFFFFFFFF;
b=32'h00000000;
#10 opcode=3'b000;
#10 opcode=3'b001;
#10 opcode=3'b011;
#10 opcode=3'b111;
end
endmodule



