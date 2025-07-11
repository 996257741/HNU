module ins_decode(en,ir,mova,movb,movc,movd,movi,add,sub,jmp,jg,in1,out1,halt);
  input wire en;
  input wire [3:0] ir;
  output reg mova,movb,movc,movd,movi,add,sub,jmp,jg,in1,out1,halt;
  always @(ir) 
    begin {mova,movb,movc,movd,movi,add,sub,jmp,jg,in1,out1,halt}=0;
    if(en==1'b1)
      begin
      if(ir[3:0]==4'b0100) mova=1;
      else if (ir[3:0]==4'b0101) movb=1;
      else if (ir[3:0]==4'b0110) movc=1;
      else if(ir[3:0]==4'b0111) movd=1;
      else if(ir[3:0]==4'b1000) add=1;
      else if(ir[3:0]==4'b1001) sub=1;
      else if(ir[3:0]==4'b1010) jmp=1;
      else if(ir[3:0]==4'b1011) jg=1;
      else if(ir[3:0]==4'b1100) in1=1;
      else if(ir[3:0]==4'b1101) out1=1;
      else if(ir[3:0]==8'b1110) movi=1;
      else if(ir[3:0]==8'b1111) halt=1;
      end
   end
  endmodule