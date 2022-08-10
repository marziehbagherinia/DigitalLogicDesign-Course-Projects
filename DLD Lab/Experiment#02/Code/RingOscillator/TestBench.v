`timescale 1ps/1ps

module testBench();
    reg  en;
    wire clk;

    parameter NO_STAGES = 3;
    parameter INV_DELAY_ps = 8330;
    
    ringOscillator #(.NO_STAGES(NO_STAGES),
                     .INV_DELAY_ps(INV_DELAY_ps)
                     )DUT (.en(en),
                           .clk(clk)
                     );
                     
    initial begin
        en = 0;
        #20000;
        en = 1;
        #20000000;
        $stop;
    end

endmodule