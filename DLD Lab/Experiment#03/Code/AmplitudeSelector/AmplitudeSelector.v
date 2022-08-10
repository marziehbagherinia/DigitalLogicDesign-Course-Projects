`timescale 1 ps/ 1 ps

module amplitudeSelector (data_in,
                          amp_sel,
                          data_out
                         );
	
	input [7:0] data_in;
	input [1:0] amp_sel;
	output reg [7:0] data_out;
	
	always @(data_in, amp_sel) begin
	     case(amp_sel)
	       2'b00:   data_out = data_in;
	       2'b01:   data_out = {1'b0, data_in[7:1]};
	       2'b10:   data_out = {2'b0, data_in[7:2]};
	       2'b11:   data_out = {3'b0, data_in[7:3]};
	       default: data_out = data_in;
	     endcase
	end

endmodule