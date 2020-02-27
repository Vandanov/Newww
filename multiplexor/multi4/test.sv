`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2020 15:47:36
// Design Name: 
// Module Name: ts_muxer8
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
    logic [3:0] in;
    logic  [1:0]   sel;
    logic       q;
mux2 DUT(.in(in), .sel(sel), .q(q));

initial begin
//    sel = 3'b000; in = 8'b00000001; #10;
//    sel = 3'b001; in = 8'b00000010; #10;
//    sel = 3'b010; in = 8'b00000100; #10;
//    sel = 3'b011; in = 8'b00001000; #10;
//    sel = 3'b100; in = 8'b00010000; #10;
//    sel = 3'b101; in = 8'b00100000; #10;
//    sel = 3'b110; in = 8'b01000000; #10;
//    sel = 3'b111; in = 8'b10000000; #10;
   
//    sel = 3'b000; in = 8'b11111110; #10;
//    sel = 3'b001; in = 8'b11111101; #10;
//    sel = 3'b010; in = 8'b11111011; #10;
//    sel = 3'b011; in = 8'b11110111; #10;
//    sel = 3'b100; in = 8'b11101111; #10;
//    sel = 3'b101; in = 8'b11011111; #10;
//    sel = 3'b110; in = 8'b10111111; #10;
//    sel = 3'b111; in = 8'b01111111; #10;
    sel = 2'b00; in = 4'b0001; #10;
    sel = 2'b01; in = 4'b0010; #10;
    sel = 2'b10; in = 4'b0100; #10;
    sel = 2'b11; in = 4'b1000; #10;
   
    sel = 2'b00; in = 4'b1110; #10;
    sel = 2'b01; in = 4'b1101; #10;
    sel = 2'b10; in = 4'b1011; #10;
    sel = 2'b11; in = 4'b0111; #10;
   


$finish;
end;
endmodule
