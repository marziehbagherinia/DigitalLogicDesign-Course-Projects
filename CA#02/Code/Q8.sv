`timescale 1ns/1ns;

module multibroadcaster2(input serIn, PB[0:3], LB[1:0], output L0[0:3], L1[0:3], L2[0:3], L3[0:3]);

  logic P[0:3] ;

  assign #(19) P[0] = serIn & PB[0], P[1] = serIn & PB[1],
               P[2] = serIn & PB[2], P[3] = serIn & PB[3];
               
  assign #(26) L0[0] = P[0] &   LB[1]  & LB[0], L0[1] = P[0] &   LB[1]  & (~LB[0]),
               L0[2] = P[0] & (~LB[1]) & LB[0], L0[3] = P[0] & (~LB[1]) & (~LB[0]);
               
  assign #(26) L1[0] = P[1] &   LB[1]  & LB[0], L1[1] = P[1] &   LB[1]  & (~LB[0]),
               L1[2] = P[1] & (~LB[1]) & LB[0], L1[3] = P[1] & (~LB[1]) & (~LB[0]);
               
  assign #(26) L2[0] = P[2] &   LB[1]  & LB[0], L2[1] = P[2] &   LB[1]  & (~LB[0]),
               L2[2] = P[2] & (~LB[1]) & LB[0], L2[3] = P[2] & (~LB[1]) & (~LB[0]);
               
  assign #(26) L3[0] = P[3] &   LB[1]  & LB[0], L3[1] = P[3] &   LB[1]  & (~LB[0]),
               L3[2] = P[3] & (~LB[1]) & LB[0], L3[3] = P[3] & (~LB[1]) & (~LB[0]);

endmodule