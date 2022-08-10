`timescale 1ps/1ps
module TestBench();
    parameter CLK = 25;
    reg clk = 0;
    reg rst = 1;
    reg GN = 1;
    reg DownUp;
    wire maxMin2;
    wire ripple1;
    
    reg [7:0]In = 8'b10001111;
    wire [7:0]Out;
    
    CounterDivider UUT(
	       .out0(Out[0]),
	       .Init(rst),
	       .In7(In[7]),
	       .In6(In[6]),
	       .In5(In[5]),
	       .In4(In[4]),
	       .DownUp(DownUp),
	       .GN(GN),
	       .In3(In[3]),
	       .In2(In[2]),
	       .In1(In[1]),
	       .In0(In[0]),
	       .clk(clk),
	       .out1(Out[1]),
	       .out2(Out[2]),
	       .out3(Out[3]),
	       .out4(Out[4]),
	       .out5(Out[5]),
	       .out6(Out[6]),
	       .out7(Out[7]),
	       .maxMin2(maxMin2),
	       .ripple1(ripple1)
	  );
	       
    always #CLK clk = ~clk;
    initial begin 
        #(CLK) rst = 0;
        #(3*CLK) rst = 1;
        #(CLK) GN = 0;
        DownUp = 0;
        #(1000*CLK)
        $stop;
    end
endmodule