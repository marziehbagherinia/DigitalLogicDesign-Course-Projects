`timescale 1ns/1ns

module multibroadcasterTB();

  logic serIn, PB[0:3], LB[1:0],
        L10[0:3], L11[0:3], L12[0:3], L13[0:3],
        L20[0:3], L21[0:3], L22[0:3], L23[0:3];

  multiBroadCaster1 cut5(serIn, PB, LB, L10, L11, L12, L13);
  multibroadcaster2 cut6(serIn, PB, LB, L20, L21, L22, L23);
  
  initial begin;
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         LB[1] = 1'b1;
         LB[0] = 1'b1;
         
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         LB[1] = 1'b1;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         LB[1] = 1'b0;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b0;
         LB[1] = 1'b1;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         LB[1] = 1'b1;
         LB[0] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         LB[1] = 1'b0;
         LB[0] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         LB[1] = 1'b1;
         LB[0] = 1'b0;    
    
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b0;
         PB[3] = 1'b1;
         LB[1] = 1'b0;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b1;
         LB[1] = 1'b1;
         LB[0] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b1;
         PB[1] = 1'b0;
         PB[2] = 1'b1;
         PB[3] = 1'b1;
         LB[1] = 1'b0;
         LB[0] = 1'b1;
         
    #100 serIn = 1'b1;
         PB[0] = 1'b0;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b1; 
         LB[1] = 1'b1;
         LB[0] = 1'b0;
         
    #100 serIn = 1'b0;
         PB[0] = 1'b1;
         PB[1] = 1'b1;
         PB[2] = 1'b1;
         PB[3] = 1'b1;
         LB[1] = 1'b1;
         LB[0] = 1'b1;                              
    #50 $stop;
  end
  
endmodule