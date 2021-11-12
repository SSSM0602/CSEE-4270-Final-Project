`timescale 1ns / 1ns

// Generate a 1 kHz clock from 50 MHz clock
module ClkDiv(Clk, Rst, ClkOut);

   input Clk, Rst;
   output reg ClkOut;
  
	parameter DivVal = 50000;
   reg[24:0] DivCnt;
   reg ClkInt;
	
   always @(posedge Clk) begin
      if( Rst == 1 )begin
         DivCnt <= 0;
         ClkOut <= 0;
         ClkInt <= 0;
      end
      else begin
         if( DivCnt == (DivVal-1) ) begin
            ClkOut <= ~ClkInt;
            ClkInt <= ~ClkInt;
            DivCnt <= 0;
         end
         else begin
            ClkOut <= ClkInt;
            ClkInt <= ClkInt;
            DivCnt <= DivCnt + 1;
         end
      end
   end
  endmodule
