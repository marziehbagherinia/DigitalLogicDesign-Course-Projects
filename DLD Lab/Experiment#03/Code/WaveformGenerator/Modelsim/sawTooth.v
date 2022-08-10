`timescale 1 ps/ 1 ps

module sawTooth_wave(clk,
                     rst,
                     counter,
                     sawTooth_out);
                   
   input clk,
         rst;
   input [7:0]  counter;
   output reg [7:0] sawTooth_out;

   always @(posedge clk, posedge rst) begin          
        sawTooth_out <= counter;
   end

endmodule
