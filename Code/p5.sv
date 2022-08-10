`timescale 1ns/1ns;

module firstFourDemux(input a5, s0, s1, output b5, c5, d5, e5);

  logic au,  ad;
  firstDemux dmux1(a5, s0, ad, au);
  firstDemux dmux2(au, s1, d5, e5);
  firstDemux dmux3(ad, s1, b5, c5);

endmodule