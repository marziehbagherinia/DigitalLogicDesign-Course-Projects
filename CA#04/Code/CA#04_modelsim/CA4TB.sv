`timescale 1ns/1ns

module CA4TB();
  reg serIn; reg CLK; reg RST;
  logic [3:0] L0, L1, L2, L3;
  
  CA4 tc(serIn, CLK, RST, L0, L1, L2, L3);
  
  initial begin
    serIn = 1;
    RST = 1;
    CLK = 1;
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