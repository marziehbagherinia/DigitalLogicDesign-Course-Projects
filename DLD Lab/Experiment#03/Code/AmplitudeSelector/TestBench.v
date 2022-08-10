`timescale 1 ps/ 1 ps

module testBench();
    parameter CLK = 50;
    reg [7:0] data_in = 8'b01000000;
    reg [1:0] amp_sel = 2'b00;
    
    wire [7:0] data_out;
    
    amplitudeSelector as(.data_in(data_in),
                         .amp_sel(amp_sel),
                         .data_out(data_out)
                         );
                         
    initial begin 
        #(10*CLK) amp_sel = 2'b01;
        #(10*CLK) amp_sel = 2'b10;
        #(10*CLK) amp_sel = 2'b11;
        #(10*CLK);
        $stop;
    end
endmodule