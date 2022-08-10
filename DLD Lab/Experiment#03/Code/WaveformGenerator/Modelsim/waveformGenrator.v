`timescale 1 ps/ 1 ps

module waveform_generator(clk,
                          rst,
                          func,
                          wave_out);
                   
   input clk,
         rst;
   input [2:0] func;
   output reg [7:0] wave_out;
   
   reg [7:0]  counter;
   
   wire [7:0] rhomboid_out,
              sine_out,
              square_out,
              triangle_out,
              sawTooth_out,
              fullWave_out,
              sineSquare_out;

   always @(posedge clk) begin
        if (rst == 1'b1  ||  counter == 8'b11111111)
          counter <= 8'b0;
        else
          counter <= counter + 1'b1;
   end
   
   rhomboid_wave rw (.clk(clk),
                     .rst(rst),
                     .counter(counter),
                     .rhomboid_out(rhomboid_out));
                     
   sine_wave sw(.clk(clk),
                .rst(rst),
                .sine_out(sine_out));                  
                     
   square_wave sw2(.clk(clk),
                   .rst(rst),
                   .counter(counter),
                   .square_out(square_out));  
   
   triangle_wave tw(.clk(clk),
                    .rst(rst),
                    .counter(counter),
                    .triangle_out(triangle_out));
   
   sawTooth_wave sw3(.clk(clk),
                     .rst(rst),
                     .counter(counter),
                     .sawTooth_out(sawTooth_out));
   
   full_wave fw(.clk(clk),
                .rst(rst),
                .fullWave_out(fullWave_out));                                   
  
   sineSquare_wave sw4(.clk(clk),
                       .rst(rst),
                       .sineSquare_out(sineSquare_out));
                                              
   always @(posedge clk) begin
       wave_out <= 8'b0;
       case (func)
            3'b000:  wave_out <= rhomboid_out;
            3'b001:  wave_out <= sine_out;
            3'b010:  wave_out <= square_out;
            3'b011:  wave_out <= triangle_out;
            3'b100:  wave_out <= sawTooth_out;
            3'b101:  wave_out <= fullWave_out;
            3'b110:  wave_out <= sineSquare_out;
            default: wave_out <= square_out;   
       endcase
   end

endmodule