// current
module curr #(parameter size = 3)(clk,rst,d,Q);
  input clk,rst;
  input [size-1:0]d;
  output reg [size-1:0]Q;
  always @(posedge clk or negedge rst)begin
    if(rst == 0) Q = 0;
    else Q <=d;
  end
endmodule