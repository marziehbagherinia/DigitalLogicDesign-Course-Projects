`timescale 1ns /1ns
module multiplexer(input first, second, selector, output reg w);
  reg helper;
  always@(first, second, selector)begin
    helper = 1'b0;
    if(selector == 0)
      helper = first;
    else
      helper = second;
  end
  assign w = helper;
endmodule