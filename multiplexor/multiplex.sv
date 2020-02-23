`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2020 16:04:36
// Design Name: 
// Module Name: mul
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


module mul(
    input [7:0] in,
    input [3:0] sel,
    output q
    );
    
assign q = !sel[2] & !sel[1] & !sel[0] & in[0]
          | !sel[2] & !sel[1] & sel[0] & in[1]
          | !sel[2] & sel[1] & !sel[0] & in[2]
          | !sel[2] & sel[1] & sel[0] & in[3]
          | sel[2] & !sel[1] & !sel[0] & in[4]
          | sel[2] & !sel[1] & sel[0] & in[5]
          | sel[2] & sel[1] & !sel[0] & in[6]
          | sel[2] & sel[1] & sel[0] & in[7];
endmodule
