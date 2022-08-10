`timescale 1ns/1ns

module demuxTB();

  logic serIn, PB[0:3], P1[0:3], P2[0:3];

  demux1 cut1(serIn, PB, P1);
  demux2 cut2(serIn, PB, P2);

  initial begin;
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b1;    
    
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b1;
        
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b1; 
         
    #100 serIn = 1'b0;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b1;                              
    #50 $stop;
  end

endmodule