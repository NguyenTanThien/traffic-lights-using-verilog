module muxnbit #(parameter size = 5)(S,D0,D1,O);
  input [size-1:0]D0,D1;
  input S;
  output [size-1:0]O;
  mux2to1 inst[size-1:0](S,D0,D1,O);
endmodule
  