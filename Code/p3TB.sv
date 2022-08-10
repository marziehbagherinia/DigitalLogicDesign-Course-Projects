`timescale 1ns/1ns

module demuxTB1();

  logic a4,s4,b4,c4;
  firstDemux cut4(a4,s4,b4,c4);
  
  initial begin;
    #100 a4 = 1'b0;
         s4 = 1'b0;
    #100 a4 = 1'b0;
         s4 = 1'b1;
    #100 a4 = 1'b1;
         s4 = 1'b0;
    #100 a4 = 1'b1;
         s4 = 1'b1;
    
    #50 $stop;
  end

endmodule