// tb
module tb_control();
  reg clk,rst,start;
  reg zero1,zero2;
  wire [2:0]signal1,signal2;
  control intst(clk,rst,start,zero1,zero2,rstc,signal1,signal2);
  initial 
  begin
    #0 start = 0; rst = 1; clk = 0; zero1 = 0; zero2 = 0;
    #5 rst= 0; start =  1;
    #5 rst = 1; start= 0;
    #20 zero1 = 0; zero2 =0;
    #20 zero1 = 0; zero2 =0;
    #20 zero1 = 0; zero2= 0;
    #20 zero1 = 1; zero2 = 0;
    #20 zero1 = 1;  zero2 = 0;
    #20 zero1 = 1; zero2 = 1;
    
  end
  always #10 clk = !clk;
endmodule
    