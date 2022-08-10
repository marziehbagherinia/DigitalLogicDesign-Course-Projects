`timescale 1ns/1ns

module fourDemuxTB();

  logic P, LB[1:0], L1[0:3], L2[0:3];

  fourDemux1 cut3(P, LB, L1);
  fourDemux2 cut4(P, LB, L2);

  initial begin;
    #100 P = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b0;
         
    #100 P = 1'b1;
         LB[1] = 1'b0;
         LB[0] = 1'b0;
         
    #100 P = 1'b0;
         LB[1] = 1'b1;
         LB[0] = 1'b0;
         
    #100 P = 1'b1;
         LB[1] = 1'b1;
         LB[0] = 1'b0;
         
    #100 P = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b1;
         
    #100 P = 1'b1;
         LB[1] = 1'b0;
         LB[0] = 1'b1;
         
    #100 P = 1'b0;
         LB[1] = 1'b1;
         LB[0] = 1'b1;
         
    #100 P = 1'b1;
         LB[1] = 1'b1;
         LB[0] = 1'b1;
         
    #50 $stop;
  end

endmodule