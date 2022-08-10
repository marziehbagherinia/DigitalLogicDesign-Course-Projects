`timescale 1ns/1ns;

module SMBSTB();

  logic serin; logic[1:0] LB; logic[0:3] PL0, PL1, PL2, PL3;
  logic [3:0] PB;

  SMBSB s2(serin, LB, PB, PL0,PL1,PL2,PL3);

  initial begin
    #20 serin = 1'b0; PB = 4'b0000; LB = 2'b00;
    #40 serin = 1'b1; PB = 4'b1100; LB = 2'b00;
    #40 serin = 1'b1; PB = 4'b1010; LB = 2'b10;
    #40 serin = 1'b0; PB = 4'b0001; LB = 2'b11;
    #50 $stop;
  end

endmodule