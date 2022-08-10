`timescale 1ns /1ns

module controller(input serIn, clk, rst, output logic shEn, Done);

  logic [1:0] nextState, preState;
  int PLC = 0; //Port and Line 
  int SC = 0; //SerIn 

  always @ (preState, serIn, PLC, SC) begin
    nextState = 2'b0;
    Done = 1'b0;
    shEn = 1'b0;
    case(preState)
      0:
        if(serIn)
          nextState = 2'b00;
        else
          nextState = 2'b01;
      1:
        if(PLC < 7) begin
          PLC = PLC + 1;
          nextState = 2'b01;
          shEn = 1'b1;
        end
        else begin
          nextState = 2'b10;
          PLC = 0;
          shEn = 1'b0;
        end
      2:
        if(SC < 6)begin 
          SC = SC + 1; 
          nextState = 2'b10;
        end
        else begin
          nextState = 2'b11;
          SC = 0;
          Done = 1'b1;
        end
      3:
        if(serIn) 
          nextState = 2'b00;
        else
          nextState = 2'b10;
    endcase
  end
  
  always @(negedge clk, posedge rst) begin
    if(rst) 
      preState <= 2'b0;
    else 
      preState <= nextState;  
  end

endmodule