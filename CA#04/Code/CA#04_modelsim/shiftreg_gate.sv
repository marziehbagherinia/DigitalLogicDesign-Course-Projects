`timescale 1ns/1ns

module shiftReg1(input serIn, clk, en, rst, output [5:0] srOut);

  DFlipFlop f1(serIn, clk, en, rst, srOut[5]);
  DFlipFlop f2(srOut[5], clk, en, rst, srOut[4]); 
  DFlipFlop f3(srOut[4], clk, en, rst, srOut[3]);
  DFlipFlop f4(srOut[3], clk, en, rst, srOut[2]);
  DFlipFlop f5(srOut[2], clk, en, rst, srOut[1]);
  DFlipFlop f6(srOut[1], clk, en, rst, srOut[0]);

endmodule