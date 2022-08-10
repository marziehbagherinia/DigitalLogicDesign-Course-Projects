`timescale 1ns/1ns

module shiftReg1TB();

  logic serIn, clk, rst, en;
  logic [5:0] srOut;

  shiftReg1 sr1(serIn, clk, en, rst, srOut);

  initial begin
    serIn = 1;
    en = 1;
    rst = 1;
    clk = 1;
    #500 rst = 0;
         serIn = 1;
         clk = 0;
    #500 clk = 1;
    #500 serIn = 1;
         clk = 0;
    #100 serIn = 0;
    #400 clk = 1;
    #500 clk = 0;
    #500 clk = 1;
    #500 clk = 1;
         serIn = 1;
    #100 $stop;
  end

endmodule