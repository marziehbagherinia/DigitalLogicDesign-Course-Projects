`timescale 1ns/1ns

module demux2(input serIn, PB[0:3], output P[0:3]);

  assign #(19) P[0] = ~(~serIn | ~PB[0]);
  assign #(19) P[1] = ~(~serIn | ~PB[1]);
  assign #(19) P[2] = ~(~serIn | ~PB[2]);
  assign #(19) P[3] = ~(~serIn | ~PB[3]);

endmodule