`timescale 1 ps/ 1 ps

module triangle_wave(clk,
                     rst,
                     counter,
                     triangle_out);
                   
   input clk,
         rst;
   input [7:0]  counter;
   output reg [7:0] triangle_out;

   always @(posedge clk) begin
        if (rst == 1'b0  &&  counter < 8'b10000000) 
          triangle_out <= counter;
        if (rst == 1'b0  &&  counter >= 8'b10000000)
          triangle_out <= 8'b11111111 - counter;
   end

endmodule