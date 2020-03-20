`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2020 15:50:17
// Design Name: 
// Module Name: tb_flip
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_flip(

    );
logic d,clock,reset,q;


flipflop DUT(.d(d),.clock(clock),.reset(reset),.q(q));



   parameter PERIOD = 10;

   always begin
      clock = 1'b0;
      #(PERIOD/2) clock = 1'b1;
      #(PERIOD/2);
   end
   
   initial begin
   reset = 1'b0; #10
   reset = 1'b1; #10
   reset = 1'b0; d = 1'b0;#10
   reset = 1'b0; d = 1'b1;#10
   reset = 1'b1; d = 1'b1;#10
   reset = 1'b1; d = 1'b0;#10
				
				    
 $finish;
 end;
    
    
    
    
    
    
    
endmodule
