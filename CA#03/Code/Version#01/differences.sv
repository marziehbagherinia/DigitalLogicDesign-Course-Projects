`timescale 1ns/1ns

module diff(input [15:0]A, B, output [3:0]d);

  logic [4:0]in1;
  logic [8:4]in2; 
  logic [12:8]in3; 
  logic [16:12]in4;
  logic [15:0]help;

  buf#(7) g1(in1[4], 1); buf#(7) g2(in2[8], 1); buf#(7) g3(in3[12], 1); buf#(7) g4(in4[16], 1);
  buf#(7) g5(d[0],in1[0]); buf#(7) g6(d[1], in2[4]); buf#(7) g7(d[2], in3[8]); buf#(7) g8(d[3], in4[12]);

  genvar i;
  generate for(i = 15; i >= 12; i = i - 1)begin:row1
      xnor#(28)(help[i], A[i], B[i]);
      and#(13)(in4[i], help[i], in4[i+1]);
    end
  endgenerate

  generate for(i = 11; i >= 8; i = i - 1)begin:row2
      xnor#(28)(help[i], A[i], B[i]);
      and#(13)(in3[i], help[i], in3[i+1]);
    end
  endgenerate
  
  generate for(i = 7; i >= 4; i = i - 1)begin:row3
      xnor#(28)(help[i], A[i], B[i]);
      and#(13)(in2[i], help[i], in2[i+1]);
    end
  endgenerate
  
  generate for(i = 3; i >= 0; i = i - 1)begin:row4
      xnor#(28)(help[i], A[i], B[i]);
     and#(13)(in1[i], help[i], in1[i+1]);
    end
  endgenerate

endmodule