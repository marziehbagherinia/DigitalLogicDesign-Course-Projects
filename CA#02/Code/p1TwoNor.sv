`timescale 1ns/1ns

module twoNor(input a2, b2, output w2);

  logic j;
  supply1 vdd2;
  supply0 gnd2;

  pmos #(5, 6, 7)T3(j, vdd2, b2);
  pmos #(5, 6, 7)T4(w2, j, a2);
  nmos #(3, 4, 5)T5(w2, gnd2, b2);
  nmos #(3, 4, 5)T6(w2, gnd2, a2);

endmodule