// traffic
module traffic(clk,rst,start,signal1,signal2,equal,rstc,count1);
  input clk,start,rst;
  output [2:0]signal1,signal2;
  output [7:0]count1;
  output    equal,rstc;
  wire select;
  control inst(clk,rst,start,rstc,select,equal,signal1,signal2);
  datapath inst1(clk,select,rstc,equal,count1);
endmodule