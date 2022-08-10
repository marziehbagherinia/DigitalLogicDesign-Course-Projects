`timescale 1ns/1ns

module nor3TB();

  logic a3;
  logic b3;
  logic c3;
  logic w3;
  
  threeNor cut3(a3, b3, c3, w3);

  initial begin;
    #100 a3 = 1'b0;
         b3 = 1'b0;
         c3 = 1'b0;
         
    #100 a3 = 1'b1;
         b3 = 1'b0;
         c3 = 1'b0;
         
    #100 a3 = 1'b0;
         b3 = 1'b1;
         c3 = 1'b0;
         
    #100 a3 = 1'b1;
         b3 = 1'b1;
         c3 = 1'b0;
         
    #100 a3 = 1'b0;
         b3 = 1'b0;
         c3 = 1'b1;
         
    #100 a3 = 1'b1;
         b3 = 1'b0;
         c3 = 1'b1;
         
    #100 a3 = 1'b0;
         b3 = 1'b1;
         c3 = 1'b1;
         
    #100 a3 = 1'b1;
         b3 = 1'b1;
         c3 = 1'b1;
         
    #50 $stop;
  end

endmodule