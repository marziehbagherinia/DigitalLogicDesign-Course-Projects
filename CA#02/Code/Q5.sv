`timescale 1ns/1ns;

module fourDemux2(input P, LB[1:0], output L[0:3]);

  assign #(26) L[0] = P & LB[1] & LB[0];
  assign #(26) L[1] = P & LB[1] & (~LB[0]);
  assign #(26) L[2] = P & (~LB[1]) & LB[0];
  assign #(26) L[3] = P & (~LB[1]) & (~LB[0]);

endmodule