// control
module control(clk,rst,start,rstc,select,equal,signal1,signal2);
  input clk,rst,start, equal;
  output rstc, select;
  output [2:0]signal1,signal2;
  wire [2:0]D, Q;
  next inst(start,equal,Q,D);
  curr inst1(clk,rst,D,Q);
  out inst2(Q,signal1,signal2,rstc,select);
endmodule