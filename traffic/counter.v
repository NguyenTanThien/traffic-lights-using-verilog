// counter 
module counter #(parameter size= 8)(clk,rst,count);
  input clk,rst;
  output reg [size-1:0]count;
  always @(posedge clk )
  begin
    if(rst == 0) count = 0;
  else  count = count+1;
      
  end
endmodule
