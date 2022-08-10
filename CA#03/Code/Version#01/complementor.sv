`timescale 1ns/1ns;

module comple(input [15:0] A, output [15:0]P);

  logic [16:0]cin;
  logic [15:0]Sum, a, b;
  logic selector;

  buf#(7)(cin[0], 1);
  buf#(7)(selector, A[15]);

  genvar i;
  generate for(i = 0; i <= 15; i = i + 1)begin:row
      and #(13)(cin[i+1], ~A[i], cin[i]);
      xor #(21)(Sum[i], ~A[i], cin[i]);
      and #(13)(a[i], ~selector, A[i]);
      and #(13)(b[i], selector, Sum[i]);
      or #(19)(P[i], a[i], b[i]);
    end
  endgenerate

endmodule