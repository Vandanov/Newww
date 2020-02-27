`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2020 19:07:55
// Design Name: 
// Module Name: thatsWork
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
module muxer2(
    input [1:0] in,
    input [1:0] sel,
    output logic q
    );

endmodule



module mux2(
    input [3:0] in,
    input [1:0] sel,
    output logic q
    );


logic [1:0] m;
genvar i;
generate
    for(i=0; i < 2; i=i+1)
    begin: mux
        muxer2 mux(.in(in[i*2+1:i*2]), .sel(sel[0]), .q(m[i]));
    end
endgenerate
    
// muxer2 mux0(.in(in[1:0]), .sel(sel[0]), .q(m[0]));
// muxer2 mux1(.in(in[3:2]), .sel(sel[0]), .q(m[1]));
 muxer2 mux2(.in(m), .sel(sel[1]), .q(q));
    
endmodule


