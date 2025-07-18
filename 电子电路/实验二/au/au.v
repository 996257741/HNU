module au(au_en,ac,a,b,t,gf);
  input wire au_en;
  input wire [3:0] ac;
  input wire [7:0] a,b;
  output reg [7:0] t;
  output reg gf;
  reg[8:0] teau_enp; //非输入输出
  always @(au_en or ac or a or b)
  begin //当au_en或ac或a或b有一个不为1时
    gf=0;
    t=00000000;
    if(au_en==1'b0)
    begin
        t=8'hZZ;
    end
    else if(au_en==1'b1)
    begin
      if(ac[3:0]==4'b1000)
       begin
         t=a+b;
       end
      else if(ac[3:0]==4'b1001)
        begin
          t=b-a;
          teau_enp=b-a;
          if(teau_enp[8]==1'b0) gf=1;
          else gf=0;
        end
       else if(ac[3:0]==4'b0100) t=a;
       else if(ac[3:0]==4'b0101) t=a;
       else if(ac[3:0]==4'b1101) t=a;
       else t=8'hZZ;
    end
  end
endmodule