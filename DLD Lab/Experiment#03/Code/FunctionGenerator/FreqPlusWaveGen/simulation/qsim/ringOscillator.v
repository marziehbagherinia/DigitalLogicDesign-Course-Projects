`timescale 1ps/1ps

module ringOscillator #(parameter NO_STAGES = 3,      // No of inverter stage
                        parameter INV_DELAY_ps = 2000   // Delay of single inverter in ps
                        )(input en,
                          output clk
                        );    
    
    wire [NO_STAGES:0] wired;
    
    assign wired[0] = en ? wired[NO_STAGES] : 0;
    assign clk = en ? wired[NO_STAGES] : 0;
    
    genvar i;
    generate
        for(i = 0; i < NO_STAGES; i = i + 1) begin
            if(i  == 0) begin
                    not #(INV_DELAY_ps)(wired[i + 1], wired[0]);   
            end
           
            else begin
                    not #(INV_DELAY_ps)(wired[i + 1], wired[i]);
            end
        end
    endgenerate   
    
endmodule