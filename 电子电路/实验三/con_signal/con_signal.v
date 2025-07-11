module con_signal(mova,movb,movd,movc,add,sub,jmp,jg,g,in1,out1,movi,halt,ir,sm,sm_en,ir_ld,ram_re,ram_wr,pc_ld,pc_in,reg_sr,reg_dr,reg_we,s,au_en,au_ac,gf_en,in_en,out_en,mux_s);
input [7:0]ir;
input mova,movb,movc,movd,add,sub,jmp,sm,jg,g,in1,out1,movi,halt;
output reg sm_en,ram_re,ir_ld,pc_in,ram_wr,pc_ld,reg_we,gf_en,in_en,out_en,mux_s,au_en;
output reg [1:0]reg_sr,reg_dr,s;
output reg [3:0]au_ac;
always @(*)
	begin
	au_en=mova | movb | add | out1 | sub;
	sm_en=~halt;
	ir_ld=~sm;
	pc_in=movi | (~sm);
	pc_ld=jmp | (jg & g);
	ram_re=(~sm) | movc | movi;
	gf_en=sub;
	ram_wr=movb;
	reg_we=movi | mova | movc | movd | sub | add | in1;
	in_en=in1;
	reg_dr=ir[3:2];
	out_en=out1;
	reg_sr=ir[1:0];
	if(movb) s=2'b10;
	else if(movc) s=2'b01;
	else s=2'b00;
	au_ac=ir[7:4];
	mux_s=mova | movb |movi | add | sub | in1;
	end
endmodule
