`timescale 1 ps/ 1 ps

module rhomboid_wave(clk,
                     rst,
                     counter,
                     rhomboid_out);
                   
   input clk,
         rst;
   input [7:0]  counter;
   output reg [7:0] rhomboid_out;
   
   reg toggle;

   always @(posedge clk, posedge rst) begin
        if (rst)
          toggle <= 1'b1;
        else
          toggle <= ~toggle;
   end
   
    always @(posedge clk) begin
        if (counter < 8'b10000000 && toggle) 
          rhomboid_out <= counter;
          
        if (counter < 8'b10000000 && ~toggle) 
          rhomboid_out <= ~counter + 1;
        
        if (counter >= 8'b10000000 && toggle)
          rhomboid_out <= 8'b11111111 - counter;
        
        if (counter >= 8'b10000000 && ~toggle)
          rhomboid_out <= ~(8'b11111111 - counter) + 1;  
   end
   
endmodule