`timescale 1 ps/ 1 ps
module TestBench();

    reg en = 0;    
    reg rst = 0;
    reg [7:0] setPeriod = 8'b00110010;
    
   wire clk;
    wire clk_div; 

    parameter NO_STAGES = 3;
    parameter INV_DELAY_ps = 66;
    
    ringOscillator #(.NO_STAGES(NO_STAGES),
                     .INV_DELAY_ps(INV_DELAY_ps)
                     )DUT (.en(en),
                           .clk(clk)
                     );

    initial begin
        #200 en = 1;
        #500000000;
        $stop; 
    end
    
    freqencyRegulator fr(.clk(clk),
                         .rst(rst),
                         .setPeriod(setPeriod),
                         .clk_div(clk_div)
                         );

    initial begin 
        #50 rst = 1;
        #150 rst = 0;
    end
endmodule
