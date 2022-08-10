module CA4TB();
  reg [3:0] L0;
  reg  Zero;
  reg  serIn;
  reg  CLK;
  reg  RST;
  reg [3:0] L1;
  reg [3:0] L2;
  reg [3:0] L3;
  CA4 tc(
	L0,
	Zero,
	serIn,
	CLK,
	RST,
	L1,
	L2,
	L3);
  initial begin
    serIn = 1;
    RST = 1;
    CLK = 1;
    Zero =0;
    #500 RST = 0;
         serIn = 0;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 0;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 0;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 0;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 0;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 0;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #500 CLK = 1;
    #500 serIn = 1;
         CLK = 0;
    #100 $stop;
  end
endmodule
