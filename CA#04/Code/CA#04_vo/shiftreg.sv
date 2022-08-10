module shiftreg(input serIn, clk, en, rst, output logic [5:0] srOut);
  logic [5:0] Out; 
  always@(negedge clk, posedge rst) begin
    if(rst)
      Out <= 6'b0;
    else
      Out <= {serIn,Out[5:1]};
  end
  assign #480 srOut = Out;
endmodule