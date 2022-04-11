// mux
module mux2to1(s,d0,d1,O);
  input d0,d1,s;
  output O;
  wire a,b;
  and inst(a, ~s,d0);
  and inst1(b,s,d1);
  or inst2(O, a,b);
endmodule