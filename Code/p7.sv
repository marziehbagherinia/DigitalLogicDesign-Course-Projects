`timescale 1ns/1ns;

module secondDemux(input a6, s6, output b6, c6);

  logic aa1, ss1;
  not #(0, 0)G1(ss1, s6);
  not #(0, 0)G2(aa1, a6);
  nor #(7, 10)G3(b6, aa1, ss1);
  nor #(7, 10)G4(c6, aa1, s6);

endmodule