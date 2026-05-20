module ALU_32(a,b,opcode,c);
input[31:0]a,b;
input[2:0]opcode;
output[63:0]c;
reg[63:0]c;
always@(a,b,opcode)
begin
case(opcode)
3'b000:c=a+b;
3'b001:c=a-b;
3'b010:c=a*b;
3'b011:c=a&b;
3'b100:c=a|b;
3'b101:c=a^b;
3'b110:c=~(a&b);
3'b111:c=~(a|b);
endcase
end
endmodule

