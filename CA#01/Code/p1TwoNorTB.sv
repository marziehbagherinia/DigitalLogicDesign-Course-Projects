`timescale 1ns/1ns

module nor2TB();

  logic a2;
  logic b2;
  logic w2;
  twoNor cut2(a2, b2, w2);

  initial begin;
    #100 a2 = 1'b0;
         b2 = 1'b0;
    #100 a2 = 1'b0;
         b2 = 1'b1;
    #100 a2 = 1'b1;
         b2 = 1'b0;        
    #100 a2 = 1'b1;
         b2 = 1'b1;
    #50 $stop;
  end

endmodule