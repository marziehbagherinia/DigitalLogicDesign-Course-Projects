`timescale 1ns/1ns
module TestBench();
  
    parameter NO_INV_STAGE = 3;
    parameter INVERTER_DELAY = 2;
    
    reg en_i = 0;
    wire clk_o;
  
    RingOscillator #(.NO_STAGES(NO_INV_STAGE),
                      .INV_DELAY_ns(INVERTER_DELAY)
                      ) DUT(.en(en_i),
                            .clk_out(clk_o)
                      );
                     
    initial begin
        en_i = 0;
        #10 en_i = 1;
        #200 
        $stop;
    end
endmodule