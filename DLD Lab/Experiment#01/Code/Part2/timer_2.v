`timescale 1us/1us
module lm_555_timer_2 #(parameter Resistor1 = 1,     // Value of Resistor one
                        parameter Resistor2 = 50,    // Value of resistor two
						            parameter capacitor = 10     // Value of Capacitor
                       )(input  reset,
                         output reg pulse
                       ); 
		 			
	localparam integer offduration = ( Resistor2 * capacitor * 0.693); 
  localparam integer onduration  = ((Resistor1 + Resistor2) * capacitor * 0.693); 
	
	parameter on_bits  = $clog2(onduration);
	parameter off_bits = $clog2(offduration);
	
	reg [on_bits:0] count_on = 0;
	reg [off_bits:0] count_off = 0;

	wire count_on_rst;
	wire count_off_rst;
	wire count_on_en;
	wire count_off_en;
	 
	assign  count_on_en   = (((count_off !== offduration) & (count_on !== onduration)));
	assign  count_off_en  = ((count_on == onduration));
	assign  count_on_rst  = reset | (count_off == offduration);
	assign  count_off_rst = reset | (count_off == offduration);

  always @(count_on_en, count_off_en) begin
			pulse <= 1'b0;
      if (count_on_en) begin
          pulse <= 1'b1;
          #(onduration);
          count_on <= onduration;
      end 
      else begin
					if (count_off_en) begin
              pulse <= 1'b0;
              #(offduration);
              count_off <= offduration;
          end
      end
  end

  always @(posedge count_on_rst) begin
      if (count_on_rst) begin
          count_on <= 0;
      end
  end
		  
  always @(posedge count_off_rst) begin
      if (count_off_rst) begin
          count_off <= 0;
      end
  end

endmodule