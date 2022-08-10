`timescale 1 ps/ 1 ps
module CounterDivider_tst();

reg DownUp;
reg GN;
reg In0;
reg In1;
reg In2;
reg In3;
reg In4;
reg In5;
reg In6;
reg In7;
reg Init;
                                              
wire cout;
wire MaxMin2;
wire out0;
wire out1;
wire out2;
wire out3;
wire out4;
wire out5;
wire out6;
wire out7;

reg en; 
wire clk_out;

RingOscillator #(3, 2000)ring1 (.en(en), .clk_out(clk_out));

// en
initial
begin
	en = 1'b0;
	en = #16000 1'b1;
end 
                       
CounterDivider i1 (   
	.clk(clk_out),
	.cout(cout),
	.DownUp(DownUp),
	.GN(GN),
	.In0(In0),
	.In1(In1),
	.In2(In2),
	.In3(In3),
	.In4(In4),
	.In5(In5),
	.In6(In6),
	.In7(In7),
	.Init(Init),
	.MaxMin2(MaxMin2),
	.out0(out0),
	.out1(out1),
	.out2(out2),
	.out3(out3),
	.out4(out4),
	.out5(out5),
	.out6(out6),
	.out7(out7)
);

// Init
initial
begin
	Init = 1'b1;
	Init = #160000 1'b0;
	Init = #240000 1'b1;
end 

// DownUp
initial
begin
	DownUp = 1'b0;
end 

// GN
initial
begin
	GN = 1'b1;
	GN = #480000 1'b0;
end 

// In0
initial
begin
	In0 = 1'b1;
end 

// In1
initial
begin
	In1 = 1'b1;
end 

// In2
initial
begin
	In2 = 1'b1;
end 

// In3
initial
begin
	In3 = 1'b1;
end 

// In4
initial
begin
	In4 = 1'b0;
end 

// In5
initial
begin
	In5 = 1'b0;
end 

// In6
initial
begin
	In6 = 1'b0;
end 

// In7
initial
begin
	In7 = 1'b1;
end

initial
begin
  #4000000;
  $stop;
end

endmodule