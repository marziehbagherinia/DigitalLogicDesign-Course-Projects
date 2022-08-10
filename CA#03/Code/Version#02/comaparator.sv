`timescale 1ns/1ns;

module compare(input [15:0]A, B, output eq);

  logic [16:0]in;
  logic [15:0]help;

  assign #(7)in[16] = 1;
  assign #(7)eq = in[0];

  genvar i;
  generate for(i = 15; i >=  0; i = i - 1)begin:row
     xnor#(27)(help[i], A[i], B[i]);
     and#(13)(in[i], help[i], in[i+1]);
   end
  endgenerate

endmodule