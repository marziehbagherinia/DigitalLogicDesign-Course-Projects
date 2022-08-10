`timescale 1ns/1ns

module shiftregTB();

  reg serIn = 1, CLK = 1, RST = 0, shEn =0;
  wire [5:0] srOut;

  shiftreg sr1(serIn, CLK, shEn, RST, srOut);

  always #500 CLK = ~CLK;

  initial begin RST = 1; #200 RST = 0; #500 shEn = 1; #50000 $stop; end

  always #1700 serIn = ~serIn;

endmodule