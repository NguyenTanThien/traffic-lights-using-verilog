//tb
module tb();
  reg clk,rst,start;
  wire [2:0]signal1,signal2;
  wire [7:0]count1;
traffic inst(clk,rst,start,signal1,signal2,equal,rstc,count1);
initial begin
    #0 start =0; rst = 1; clk = 0;
    #5 rst = 0;
    #10 rst = 1; start = 1;
    #30 start  =0;
  end
  always #15 clk = !clk;
endmodule