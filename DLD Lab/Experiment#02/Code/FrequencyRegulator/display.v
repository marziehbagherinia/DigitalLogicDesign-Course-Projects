`timescale 1ns/1ns
module display (PSI,
                clk, 
                rst, 
                setPeriod,
                equal,
                duration,
			          adjustedDiv);
   
  input PSI,
        clk,
        rst;
  input [7:0] setPeriod;
  output reg equal;
  output reg [7:0] duration,
                   adjustedDiv;
         
  reg enable,
      prePSI,
      increment,
      decrement;
      
  reg calcOut_1,
      calcOut_2;
  
  always @(posedge clk, posedge rst) begin 
      if (rst) 
          prePSI <= 1'b0;
      else 
	      prePSI <= PSI;
  end
      
  always @(posedge clk) begin
      case ({prePSI, PSI})
            2'b00: duration <= duration;
            2'b01: duration <= 8'b0;
            2'b10: duration <= duration;
            2'b11: duration <= duration + 1;               
      endcase
  end
  
  always @(posedge clk) begin
      if ({prePSI, PSI} == 2'b10) 
			    enable <= 1'b1;
 			else
 			    if ({prePSI, PSI} == 2'b01)
				      enable <= 1'b0;   
  end
	  
  always @(enable, setPeriod, duration) begin
	    {increment, decrement, equal} = 3'b0;
	    if (enable)
			    if (setPeriod < duration)
			        increment = 1'b1;
			    else
			        if (setPeriod > duration)
			            decrement = 1'b1;
			        else
			            if (setPeriod == duration)
			                equal = 1'b1;
  end
  
  always @(enable, calcOut_2) begin
	    if (~enable)
			    calcOut_1 = 1'b0;
			else
			    if (calcOut_2 == 1'b1)
			       	calcOut_1 = 1'b1;
	end
	
	always @(posedge clk, posedge rst) begin
	    if (rst)
			    adjustedDiv <= 8'b01111111; 
	    else
	        if (enable & ~calcOut_1) begin
     	        if (increment) begin
     	            adjustedDiv <= adjustedDiv + 1;
     	            calcOut_2 <= 1'b1;
  	           end
   	          else begin
 	                if (decrement) begin
 	                    adjustedDiv <= adjustedDiv - 1;
 	                    calcOut_2 <= 1'b1;
 	                end
 	            end
 	        end 
 	        else begin
 	            if (~enable)
 	              calcOut_2 <= 1'b0;
 	        end     
  end
endmodule