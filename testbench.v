module test;
  reg clk;
  reg rst;
  reg mode;
  wire [3:0] q;
  
  counter uut(clk,rst,mode,q);
  always #5 clk=~clk;
  
  initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(0,test);
clk=0; rst=1; mode=0;
    $monitor("clk=%b,rst=%b,mode=%b,q=%b",clk,rst,mode,q);
   #10 rst=0; 
    #150 mode=1;
    #320 $finish;
  end
endmodule
