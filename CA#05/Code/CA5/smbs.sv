`timescale 1ns/1ns
module SMBSB(input serin, input[1:0] LB, input[3:0] PB, output reg[3:0] L0, L1, L2, L3);
  always @(serin, PB, LB) begin
    L0=4'b0;
    L1=4'b0;
    L2=4'b0;
    L3=4'b0;
    if(PB[0] == 1'b1) begin
      case(LB)
        0: L0[0]= serin;
        1: L0[1]= serin;
        2: L0[2]= serin;
        3: L0[3]= serin;
        default: L0 = 4'b0;
      endcase
    end
    if(PB[1] == 1'b1) begin
      case(LB)
        0: L1[0]= serin;
        1: L1[1]= serin;
        2: L1[2]= serin;
        3: L1[3]= serin;
        default: L1=4'b0;
      endcase
    end
    if(PB[2] == 1'b1) begin
      case(LB)
        0: L2[0]= serin;
        1: L2[1]= serin;
        2: L2[2]= serin;
        3: L2[3]= serin;
        default: L2=4'b0;
      endcase
    end
    if(PB[3] == 1'b1) begin
      case(LB)
        0: L3[0]= serin;
        1: L3[1]= serin;
        2: L3[2]= serin;
        3: L3[3]= serin;
        default: L3=4'b0;
      endcase
    end
  end
endmodule