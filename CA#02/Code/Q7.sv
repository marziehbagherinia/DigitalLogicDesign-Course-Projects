`timescale 1ns/1ns;

module multiBroadCaster1(input serIn, PB[0:3], LB[1:0], output L0[0:3], L1[0:3], L2[0:3], L3[0:3]);

  logic P[0:3];

  demux2 firstpart(serIn, PB[0:3], P[0:3]);
  fourDemux2 secondpart0(P[0], LB[1:0], L0[0:3]);
  fourDemux2 secondpart1(P[1], LB[1:0], L1[0:3]);
  fourDemux2 secondpart2(P[2], LB[1:0], L2[0:3]);
  fourDemux2 secondpart3(P[3], LB[1:0], L3[0:3]);

endmodule