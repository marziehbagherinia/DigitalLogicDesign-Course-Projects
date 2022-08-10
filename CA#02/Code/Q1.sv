`timescale 1ns/1ns

module demux1(input serIn, PB[0:3], output P[0:3]);

  logic ns, nPB[0:3];

  inverter inv1(serIn,ns), inv2(PB[0],nPB[0]), inv3(PB[1], nPB[1]) , inv4(PB[2],nPB[2]), inv5(PB[3],nPB[3]); 
  twoNor nor1(ns, nPB[0], P[0]), nor2(ns, nPB[1], P[1]), nor3(ns, nPB[2], P[2]), nor4(ns, nPB[3], P[3]);

endmodule