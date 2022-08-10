`timescale 1ns/1ns;

module MFC1(input [15:0]A, B, output eq, ae, gt, [3:0]d);

  comparator G1(A, B, eq, ae, d);
  comparator2 G2(A, B, gt);

endmodule