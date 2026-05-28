module counter(clk,rst,mode,q);
  input clk;
  input rst;
  input mode;
  output reg [3:0] q;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        q<=4'b0000;
      else if(mode==1'b0)
        q<=q+1;
      else
        q<=q-1;
    end
endmodule
