`timescale 1 ps/ 1 ps

module counter_1(clk,
                 rst,
                 counter_out);
                   
   input clk,
         rst;
   output reg [9:0] counter_out;

   always @(posedge clk) begin
        if (rst == 1'b1  ||  counter_out == 10'b1111111111)
          counter_out <= 10'b0;
        else
          counter_out <= counter_out + 1'b1;
   end
	
	endmodule