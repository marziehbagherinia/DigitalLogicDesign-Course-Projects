`timescale 1ps/1ps
module CA5TB();
  wire [3:0]l0, l1, l2, l3;
  reg  z = 0;
  reg  ser = 0;
  reg  clk = 1;
  reg  rst = 0;
  CA5 c1(
	.L0(l0),
	.Zero(z),
	.serIn(ser),
	.CLK(clk),
	.RST(rst),
	.L1(l1),
	.L2(l2),
	.L3(l3));
  always #500 clk=~clk;
  initial begin rst=1; #200 rst=0; #500000 $stop; end
  always #1700 ser = ~ser;
endmodule