`timescale 1ns/1ns
module shiftreg(input serIn, clk, en, rst, output reg [5:0] srOut);
  always@(negedge clk, posedge rst) begin
    if(rst)
      srOut <= 6'b0;
    else
      srOut <= {serIn,srOut[5:1]};
  end
endmodule