`timescale 1ns / 1ns

module ReactionTimer(Clk, Rst, Start, LED, ReactionTime, Cheat, Slow, Wait, RandomValue, LCDUpdate, LCDAck);

   input Start, LCDAck, Clk, Rst;
	input [ ] RandomValue;
   output reg [ ] ReactionTime;
	output reg [ ] LED;
   output reg Cheat, Slow, Wait;
	output reg LCDUpdate;
 
  endmodule
