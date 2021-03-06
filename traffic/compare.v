// compare//
// Nguyen Tan Thien///
// 19522266 //
// UIt//
module compare#(parameter size = 8)(select,A,equal);
  
  parameter [size-1:0]Green = 30;
  parameter [size-1:0]Yellow = 3;// red = greeen + yellow
  
  input [size-1:0]A;
  input select;
  output reg equal;
  always @(*)begin
    case(select)
     1'b0: begin
            if(A == Green) equal = 1;
            else equal =0;
     end
     1'b1: begin
            if(A == Yellow) equal = 1;
            else equal =0;
     end
   endcase
  end
endmodule