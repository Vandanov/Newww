`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2020 10:09:22
// Design Name: 
// Module Name: cnt12
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


module cnt12(
    input clk,
    input reset,
    input ud,
    output logic [3:0] q
    );
    
  always @(posedge clk) begin
    if(reset)
        q<=4'b0000;
    else if (ud) begin
        if(q==11) 
            q<=4'b0000;
        else
            q<= q+1;      
        end
    else begin
        if(q==0)
            q<=4'b1011;
        else 
            q<=q-1;
        end
 end       
    
endmodule
