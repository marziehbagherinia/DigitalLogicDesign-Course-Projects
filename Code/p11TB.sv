`timescale 1ns/1ns

module fourDemuxTB3();

  logic a9, s4, s5, b5, c5, d5, e5, b8, c8, d8, e8, b9, c9, d9, e9;
  firstFourDemux cut8(a9, s4, s5, b5, c5, d5, e5);
  secondFourDemux cut9(a9, s4, s5, b8, c8, d8, e8);
  thirdFourDemux cut10(a9, s4, s5, b9, c9, d9, e9);

  initial begin;
    #100 a9 = 1'b0;
         s4 = 1'b0;
         s5 = 1'b0;
         
    #100 a9 = 1'b1;
         s4 = 1'b0;
         s5 = 1'b0;
         
    #100 a9 = 1'b0;
         s4 = 1'b1;
         s5 = 1'b0;
         
    #100 a9 = 1'b1;
         s4 = 1'b1;
         s5 = 1'b0;
         
    #100 a9 = 1'b0;
         s4 = 1'b0;
         s5 = 1'b1;
         
    #100 a9 = 1'b1;
         s4 = 1'b0;
         s5 = 1'b1;
         
    #100 a9 = 1'b0;
         s4 = 1'b1;
         s5 = 1'b1;
         
    #100 a9 = 1'b1;
         s4 = 1'b1;
         s5 = 1'b1;
         
    #50 $stop;
  end
  
endmodule