`timescale 1ns/1ns

module ineverter(input a1, output w1);

  supply1 vdd1;
  supply0 gnd1;
  pmos #(5, 6, 7)T1(w1, vdd1, a1);
  nmos #(3, 4, 5)T2(w1, gnd1, a1);

endmodule