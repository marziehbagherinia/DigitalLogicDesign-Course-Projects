`timescale 1ns/1ns

module invTB();

  logic a1;
  logic w1;
  ineverter cut1(a1, w1);

  initial begin;
    #30 a1 = 1'b0;
    #35 a1 = 1'b1;
    #40 a1 = 1'b0;
    #45 a1 = 1'b1;
    #30 $stop;
  end

endmodule