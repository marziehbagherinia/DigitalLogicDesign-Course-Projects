`timescale 1ns /1ns

module DFlipFlop(input D , clk, en, rst, output Q);

  logic nclck, C, nD, nC, aD, anD, q, nq, aq, anq;

  not #7  not0(nclk, clk);
  and #17 and0(C, nclk, en);
  not #7  not1(nD, D);
  not #7  not2(nC, C);
  and #17 and1(aD, D, C);
  and #15 and2(anD, nD, C);
  nor #21 nor1(q, anD, nq, rst);
  nor #14 nor2(nq, aD, q);
  and #17 and3(aq, nC, q);
  and #17 and4(anq, nC, nq);
  nor #21 nor3(Q, anq, nQ, rst);
  nor #14 nor4(nQ, aq, Q);

endmodule