module mux3_1(a,b,c,s,y);
    input [1:0] s;
	input [7:0] a,b,c;
	output reg[7:0] y;

always @(*) //always模块中的任何一个输入信号或电平发生变化时，该语句下方的模块将被执行
    begin
    if(s==2'b00) y=a;
    else if(s==2'b01) y=b;
    else if(s==2'b10) y=c;
    else y=a;
    end
endmodule