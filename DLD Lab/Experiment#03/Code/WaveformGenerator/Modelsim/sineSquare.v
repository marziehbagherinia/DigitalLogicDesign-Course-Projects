`timescale 1 ps/ 1 ps

module sineSquare_wave(clk,
                       rst, 
                       sineSquare_out);
                   
   input clk,
         rst;
   output [7:0] sineSquare_out;
 
   wire [15:0] sine, 
               cosine;
   reg  [15:0] pre_sine,
               pre_cosine;
    
   reg toggle;            

   assign sine = pre_sine + {{(6){pre_cosine[15]}}, pre_cosine[15:6]};
   assign cosine = pre_cosine - {{(6){sine[15]}}, sine[15:6]};
   assign sineSquare_out = (toggle) ? (sine[15:8] + 8'b01111111)  : (~(sine[15:8] + 8'b01111111) + 1'b1);
   
   
   always @(posedge clk, posedge rst) begin
        if (rst)
          toggle <= 1'b1;
        else
          toggle <= ~toggle;
   end  
  
   always @(posedge clk, posedge rst) begin
        if (rst) begin
            pre_sine <= 16'b0;
            pre_cosine <= 16'b0111010100110000;
        end
        else begin
            pre_sine <= sine;
            pre_cosine <= cosine;
        end
   end 
     
endmodule