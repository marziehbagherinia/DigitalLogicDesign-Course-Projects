`timescale 1ns/1ns;

module fourDemux1(input P, LB[1:0], output L[0:3]);

  logic nP, nLB[1:0];

  inverter n1(P, nP) ;
  inverter n2(LB[1], nLB[1]);
  inverter n3(LB[0], nLB[0]);
  threeNor nor5(nP, nLB[1], nLB[0], L[0]);
  threeNor nor6(nP, nLB[1], LB[0], L[1]);
  threeNor nor7(nP, LB[1], nLB[0], L[2]);
  threeNor nor8(nP, LB[1], LB[0], L[3]);

endmodule