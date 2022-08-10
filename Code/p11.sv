`timescale 1ns/1ns;

module thirdFourDemux(input a9, s4, s5, output b9, c9, d9, e9);

  logic na, ns4, ns5;

  not #(7)n1(na, a9) ;
  not #(7)n2(ns4, s4);
  not #(7)n3(ns5, s5);
  threeNor nor3(na, ns4, ns5, b9);
  threeNor nor4(na, ns4, s5, c9);
  threeNor nor5(na, s4, ns5, d9);
  threeNor nor6(na, s4, s5, e9);

endmodule