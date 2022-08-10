`timescale 1ns/1ns;

module comparator(input [15:0]A, B, output eq, ae, [3:0]d);

  logic [15:0]P, Q;

  compare G1(A, B, eq);
  comple G2(A, P);
  comple G3(B, Q);
  compare G4(P, Q, ae);
  diff G5(A, B, d);

endmodule