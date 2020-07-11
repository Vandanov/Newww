`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2020 10:13:23
// Design Name: 
// Module Name: ts_bench
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


module ts_bench();

logic clk,reset,ud;
logic [3:0] q;

cnt12 DUT(.clk(clk), .reset(reset), .ud(ud), .q(q));

parameter PERIOD = 10;
always begin
    clk = 1'b0;
    #(PERIOD/2) clk = 1'b1;
    #(PERIOD/2);
end


initial begin 
    reset = 1; ud=1; #10;
    reset = 0; ud=1; #150;
    reset = 0; ud=0; #150;
 $finish;
 end;   

endmodule
