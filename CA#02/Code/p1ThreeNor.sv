`timescale 1ns/1ns

module threeNor(input a3,  b3,  c3,  output w3);

  logic i,  p;
  supply1 vdd3;
  supply0 gnd3;

  pmos #(5, 6, 7)T7(p, vdd3, b3);
  pmos #(5, 6, 7)T8(i, p, a3);
  pmos #(5, 6, 7)T9(w3, i, c3);
  nmos #(3, 4, 5)T10(w3, gnd3, b3);
  nmos #(3, 4, 5)T11(w3, gnd3, a3);
  nmos #(3, 4, 5)T12(w3, gnd3, c3);
  
endmodule