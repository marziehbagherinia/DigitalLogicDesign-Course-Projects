`timescale 1 ps/ 1 ps

module testBench();
  parameter CLK = 50;
  reg clk;
  reg rst;
  reg [2:0] func = 3'b000;
  
  wire [7:0] wave_out;
  
  waveform_generator wg(.clk(clk),
                        .rst(rst),
                        .func(func),
                        .wave_out(wave_out));
  always begin
	    clk = 1'b0;
	    clk = #CLK 1'b1;
	    #CLK;
  end 

  initial begin
	    #CLK rst = 1'b1;
	    #CLK rst = 1'b0;
	    #(2000*CLK) func = 3'b001;
	    #(2000*CLK) func = 3'b010;
	    #(2000*CLK) func = 3'b011;
	    #(2000*CLK) func = 3'b100;
	    #(2000*CLK) func = 3'b101;
	    #(2000*CLK) func = 3'b110;
	    #(2000*CLK);
	    
$stop;
  end 

endmodule