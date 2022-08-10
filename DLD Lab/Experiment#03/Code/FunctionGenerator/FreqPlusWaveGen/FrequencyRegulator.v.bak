`timescale 1 ps/ 1 ps

module freqencyRegulator (clk,
                	         rst,
                          setPeriod,
            	   	 	 	 	   clk_div
                          );

    input clk,
          rst;
    input [7:0] setPeriod;
    output reg clk_div;
         
    reg  [7:0] count;
    wire [7:0] halfPeriod;
 
    assign halfPeriod = {1'b0, setPeriod[7:1]};
 
    always @ (posedge(clk), posedge(rst)) begin
        if (rst == 1'b1)
            count <= 32'b0;
        else if (count == halfPeriod - 1)
            count <= 32'b0;
        else
            count <= count + 1;
    end

    always @ (posedge(clk), posedge(rst)) begin
        if (rst == 1'b1)
            clk_div <= 1'b0;
        else if (count == halfPeriod - 1)
            clk_div <= ~clk_div;
        else
            clk_div <= clk_div;
    end
endmodule