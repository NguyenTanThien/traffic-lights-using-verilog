// next
module next #(parameter size= 3)(start,equal,Q,D);
  input start, equal;
  input [size-1:0]Q;
  output reg [size-1:0]D;
  always @(*)begin
    case(Q)
      3'b000: begin
                if(start == 1) D[2:0] = 3'b001;
              else D = 3'b000;
        
            end
      3'b001:begin
              if(equal == 1)
                  D = 3'b010;
                else D = 3'b001;
            end
      3'b010:begin
              if(equal == 1)
                  D = 3'b011;
                  else D = 3'b010;
            end
      3'b011:begin
              if(equal == 1)
                  D = 3'b100;
                  else D = 3'b011;
            end
      3'b100:begin
              if(equal == 1)
                  D = 3'b001;
                  else D = 3'b100;
            end
    endcase
    
  end
endmodule