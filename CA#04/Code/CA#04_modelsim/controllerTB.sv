`timescale 1ns/1ns

module controllerTB();

  logic serIn, CLK, RST, shEn, Done;

  controller C1(serIn, CLK, RST, shEn, Done);

  initial begin
    RST = 1;
    CLK = 1;
    #700 RST = 0;
    #750 serIn = 1;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 0;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 1;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 0;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 1;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 1;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 0;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 0;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 1;
    #700 CLK = 0;
    #700 CLK = 1;
    #750 serIn = 1;
    #700 CLK = 0;
    #700 CLK = 1;
  end
  
endmodule