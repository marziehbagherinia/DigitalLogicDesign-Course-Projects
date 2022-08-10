`timescale 1us/1us
module TestBench_2();
    parameter CLK = 50;
    reg rst = 0;
    wire pulse;
    lm_555_timer_2 UUT(
        .reset(rst),
        .pulse(pulse)
    );
    initial begin 
        #(CLK) rst = 1;
        #(3*CLK) rst = 0;
        #(500*CLK)
        $stop;
    end
endmodule