`timescale 1ns/1ns
module MFCTB1();

  logic [15:0] A, B;
  logic eq, ae, gt;
  logic [3:0]d;

  MFC1 cut1(A, B, eq, ae, gt, d);

  initial begin;
     #50 A[0] = 1;
         A[1] = 1;
         A[2] = 0;
         A[3] = 1;
         A[4] = 1;
         A[5] = 0;
         A[6] = 1;
         A[7] = 1;
         A[8] = 1;
         A[9] = 1;
         A[10] = 0;
         A[11] = 0;
         A[12] = 1;
         A[13] = 0;
         A[14] = 1;
         A[15] = 0;
         B[0] = 1;
         B[1] = 1;
         B[2] = 0;
         B[3] = 1;
         B[4] = 1;
         B[5] = 0;
         B[6] = 1;
         B[7] = 1;
         B[8] = 1;
         B[9] = 1;
         B[10] = 0;
         B[11] = 0;
         B[12] = 1;
         B[13] = 0;
         B[14] = 1;
         B[15] = 0;  
    #8000$stop;

  end

endmodule