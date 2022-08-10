`timescale 1ns/1ns

module fourDemuxTB1();

  logic a5, s0, s1, b5, c5, d5, e5;
  firstFourDemux cut5(a5, s0, s1, b5, c5, d5, e5);
  
  initial begin;
    #100 a5 = 1'b0;
         s0 = 1'b0;
         s1 = 1'b0;
         
    #100 a5 = 1'b1;
         s0 = 1'b0;
         s1 = 1'b0;
         
    #100 a5 = 1'b0;
         s0 = 1'b1;
         s1 = 1'b0;
         
    #100 a5 = 1'b1;
         s0 = 1'b1;
         s1 = 1'b0;
         
    #100 a5 = 1'b0;
         s0 = 1'b0;
         s1 = 1'b1;
         
    #100 a5 = 1'b1;
         s0 = 1'b0;
         s1 = 1'b1;
         
    #100 a5 = 1'b0;
         s0 = 1'b1;
         s1 = 1'b1;
         
    #100 a5 = 1'b1;
         s0 = 1'b1;
         s1 = 1'b1;
         
    #50 $stop;
  end

endmodule