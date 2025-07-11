module ins_decode(en,ir,mova,movb,movc,movd,movi,add,sub,jmp,jg,in1,out1,halt);
  input wire en;
  input wire [7:0] ir;
  output reg mova,movb,movc,movd,movi,add,sub,jmp,jg,in1,out1,halt;
  always @(ir) 
    begin {mova,movb,movc,movd,movi,add,sub,jmp,jg,in1,out1,halt}=0;
    if(en==1'b1)
      begin
      if(ir[7:4]==4'b0100)
      begin
			mova=1;
      end
      else if (ir[7:2]==6'b010100) movb=1;
      else if (ir[7:4]==4'b0110) movc=1;
      else if(ir[7:2]==6'b011111) movd=1;
      else if(ir[7:4]==4'b1000) add=1;
      else if(ir[7:4]==4'b1001) sub=1;
      else if(ir[7:4]==4'b1010) jmp=1;
      else if(ir[7:4]==4'b1011) jg=1;
	  else if(ir[7:4]==4'b1100) in1=1;
      else if(ir[7:4]==4'b1101) out1=1;
      else if(ir[7:2]==8'b111000) movi=1;
      else if(ir[7:0]==8'b11110000) halt=1;
      end
   end
  endmodule 