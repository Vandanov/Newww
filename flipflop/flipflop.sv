`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2020 15:42:35
// Design Name: 
// Module Name: flipflop
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


module flipflop(
    input clock,
//    output reg q, //wire - combination - default
    output logic q, //wire - combination - default
    input reset, //logic = wire and reg
    input d
    );
    

always @(posedge clock)//down -> up changes
   if (reset) begin
        q<= 1'b0;// = - for wire = comb <= not
        
   end else begin
        q<=d;
        end

    
endmodule
