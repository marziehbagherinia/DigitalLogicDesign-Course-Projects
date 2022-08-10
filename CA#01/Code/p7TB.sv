`timescale 1ns/1ns

module demuxTB2();

  logic a6, s6, b4, c4, b6, c6;
  secondDemux cut6(a6, s6, b6, c6);
  firstDemux cut7(a6, s6, b4, c4);

  initial begin;
    #300 a6 = 1'b0;
         s6 = 1'b0;
    #300 a6 = 1'b0;
         s6 = 1'b1;
    #300 a6 = 1'b1;
         s6 = 1'b0;
    #300 a6 = 1'b1;
         s6 = 1'b1;   
    #50 $stop;
  end

endmodule