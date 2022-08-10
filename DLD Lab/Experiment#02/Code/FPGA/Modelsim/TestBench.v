`timescale 1ns/1ns
module TestBench();
    parameter CLK = 10;
    
    reg clk = 0;
    reg rst = 0;
    reg PSI = 0;
    reg [7:0] setPeriod = 8'b00011000;

    wire equal;
    wire [7:0] duration,
               adjustedDiv;
			                  
    FPGA fpga(.PSI(PSI),
               .clk(clk), 
               .rst(rst), 
               .setPeriod(setPeriod),
                .equal(equal),
               .duration(duration),
			         .adjustedDiv(adjustedDiv));
			         
    always #CLK clk = ~clk;
    initial begin 
        #(CLK) rst = 1;
        #(3*CLK) rst = 0;
        #(5*CLK) PSI = 1;
        #(50*CLK) PSI = 0;
        #(50*CLK) PSI = 1;
        #(10*CLK) PSI = 0;
        #(10*CLK) PSI = 1;
        #(5*CLK) PSI = 0;
        #(500*CLK)
        $stop;
    end
endmodule