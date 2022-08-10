`timescale 1ns/1ns;

module firstDemux(input a4, s4, output b4, c4);

  logic aa, ss;

  ineverter inv1(a4, aa), inv2(s4, ss);
  twoNor nor1(aa,ss, b4), nor2(aa,s4, c4);

endmodule