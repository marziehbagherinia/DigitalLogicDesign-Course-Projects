`timescale 1ns/1ns;

module MFC2(input [15:0]A, B, output reg eq, ae, gt, [3:0]d);

  integer i;
  reg [15:0]C, D;
  reg [3:0]E; reg [7:4]F; reg [11:8]G; reg [15:12]H;

  always@(A or B or C or D or E or F or G or H)#576 begin
    eq  =  0; ae  =  0; gt  =  0; d  =  4'b0;
  
    if(A == B) eq = 1;
      
    if(A[15] == 0 && B[15] == 0 || A[15] == 1 && B[15] == 1) if(A > B) gt = 1;
    if(A[15] < B[15]) gt = 1;
        
    if(A[15] == 1'b1) C = ~A + 1; 
    else C = A;
    
    if(B[15] == 1'b1) D = ~B + 1;  
    else D = B;  
    
    if(C == D) ae = 1;
      
    for(i = 0; i <= 3; i = i + 1)
        if(A[i] == B[i]) E[i] = 1;
        else E[i] = 0;

    if(E == 4'b1111) d[0] = 1;

    for(i = 4; i <= 7; i = i + 1)
        if(A[i] == B[i]) F[i] = 1;
        else F[i] = 0;
    
    if(F == 4'b1111) d[1] = 1;

    for(i = 8; i <= 11; i = i + 1)
        if(A[i] == B[i]) G[i] = 1;
        else G[i] = 0;

    if(G == 4'b1111) d[2] = 1;
    
    for(i = 12; i <= 15; i = i + 1)
        if(A[i] == B[i]) H[i] = 1;
        else H[i] = 0;

    if(H == 4'b1111) d[3] = 1;     
  
  end

endmodule