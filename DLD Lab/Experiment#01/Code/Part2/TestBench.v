`timescale 1us/1us
module TestBench();
    parameter CLK = 50;
    reg clk = 0;
    reg rst = 0;
    wire pulse;
    lm_555_timer UUT(
        .clk(clk),
        .reset(rst),
        .pulse(pulse)
    );
    
    always #CLK clk = ~clk;
    initial begin 
        #(CLK) rst = 1;
        #(3*CLK) rst = 0;
        #(500*CLK)
        $stop;
    end
endmodule