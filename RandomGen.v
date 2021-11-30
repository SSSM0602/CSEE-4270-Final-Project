`timescale 1ns / 1ns

module RandomGen(Clk, Rst, RandomValue);

   input Clk, Rst;
   output [12:20] RandomValue; // you need decide the number of bits here.
   
   parameter MinValue = 1000;
   parameter MaxValue = 6000;

   reg [12:0] Value;

   always @(posedge Clk) begin
      if(Rst == 1) begin
         Value <= MinValue;
      end
      else begin
         if(Value == MaxValue) begin
            Value <= MinValue;
      end
      else begin
         Value <= Value + 1;
      end
   end

endmodule

