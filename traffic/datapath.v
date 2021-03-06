//datapath
module datapath(clk,select,rstc,equal,count1);
  input rstc,clk, select;
  output equal;
  wire rst_c1;
  output [7:0]count1;

  counter inst(clk,rst_c1,count1);
  compare inst1(select,count1,equal);
   nor a1(rst_c1, equal,rstc);
  
endmodule