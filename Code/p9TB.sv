`timescale 1ns/1ns

module fourDemuxTB2();

  logic a8, s2, s3, b5, c5, d5, e5, b8, c8, d8, e8;
  firstFourDemux cut8(a8, s2, s3, b5, c5, d5, e5);
  secondFourDemux cut9(a8, s2, s3, b8, c8, d8, e8);

  initial begin;
    #100 a8 = 1'b0;
         s2 = 1'b0;
         s3 = 1'b0;
         
    #100 a8 = 1'b1;
         s2 = 1'b0;
         s3 = 1'b0;
         
    #100 a8 = 1'b0;
         s2 = 1'b1;
         s3 = 1'b0;
         
    #100 a8 = 1'b1;
         s2 = 1'b1;
         s3 = 1'b0;
         
    #100 a8 = 1'b0;
         s2 = 1'b0;
         s3 = 1'b1;
         
    #100 a8 = 1'b1;
         s2 = 1'b0;
         s3 = 1'b1;
         
    #100 a8 = 1'b0;
         s2 = 1'b1;
         s3 = 1'b1;
         
    #100 a8 = 1'b1;
         s2 = 1'b1;
         s3 = 1'b1;
         
    #50 $stop;
  end

endmodule