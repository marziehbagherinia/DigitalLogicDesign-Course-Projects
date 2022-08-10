`timescale 1ns/1ns;

module secondFourDemux(input a8, s2, s3, output b8, c8, d8, e8);

  logic au1, ad1;
  secondDemux dmux4(a8, s2, ad1, au1);
  secondDemux dmux5(au1, s3, d8, e8);
  secondDemux dmux6(ad1, s3, b8, c8);

endmodule