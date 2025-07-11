module pc (
    input clk,ld_pc,in_pc,
    input [7:0] a,
    output reg[7:0] c=8'b00000000);

always @(negedge clk)
begin
    if(in_pc==1'b1&&ld_pc==1'b0) c<=c+8'b0000001;
    else if(in_pc==1'b0&&ld_pc==1'b1) c<=a;
end
endmodule