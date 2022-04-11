// out
module out #(parameter size =3)(Q,signal1,signal2,rstc,select);
  input [size-1:0]Q;
  output reg [2:0]signal1, signal2;
  output reg rstc;
  output reg select;
  always @(*)begin
    case(Q)
      3'b000: begin
              signal1 = 3'b000;
              signal2 = 3'b000;
              rstc = 1; 
              select = 0;
              
    end 
    3'b001: begin
              signal1 = 3'b100;
              signal2 = 3'b010;
              rstc = 0; 
              select =0;
    end 
    3'b010: begin
              signal1 = 3'b100;
              signal2 = 3'b001;
              rstc = 0;
              select = 1; 
              
    end 
    3'b011: begin
              signal1 = 3'b010;
              signal2 = 3'b100;
              rstc = 0; 
              select = 0;
    end 
    3'b100: begin
              signal1 = 3'b001;
              signal2 = 3'b100;
              rstc = 0; 
              select = 1;
    end 
  endcase
  end
endmodule