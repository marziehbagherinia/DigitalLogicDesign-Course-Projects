`timescale 1ns/1ns;

module comparator2(input [15:0]A, B, output gt);

  assign #(576)gt = (A[15] == 0 && B[15] == 0 || A[15] == 1 && B[15] == 1) ? ((A > B) ? 1'b1 : 1'b0) :
                    (A[15] == 0 && B[15] == 1) ? 1'b1 : 1'b0;

endmodule