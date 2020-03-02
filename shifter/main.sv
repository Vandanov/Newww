`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2020 10:24:47
// Design Name: 
// Module Name: shifter
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

module muxer4(
    inpit [3:0] in,
    inpit [1:0] sel,
    output logic q
);

assign q = !sel[1] & !sel[0] & in[0]
          |  !sel[1] & sel[0] & in[1]
          |  sel[1] & !sel[0] & in[2]
          |  sel[1] & sel[0] & in[3];

endmodule;

module shifter(
    input [3:0] in,
    input [1:0] shift,
    output logic [3:0] q
    );
always_comb
case(shift)
   2'b00 : q = in;
   2'b01 : begin
        q[0] = in[3]; q[1] = in[0]; q[2] = in[1]; q[3] = in[2];
        end
   2'b10 : begin 
        q[0] = in[2]; q[1] = in[3]; q[2] = in[0]; q[3] = in[1];
   end
   2'b11 : begin
        q[0] = in[1]; q[1] = in[2]; q[2] = in[3]; q[3] = in[0];
   end
endcase

//2'b00

//muxer4 m0(.in({in[3], in[2],in[1],in[0]}) ,.sel(shift), .q(q[0]));
//muxer4 m1(.in({in[0], in[3],in[2],in[1]}) ,.sel(shift), .q(q[1]));
//muxer4 m2(.in({in[1], in[0],in[3],in[2]}) ,.sel(shift), .q(q[2]));
//muxer4 m3(.in({in[2], in[1],in[0],in[3]}) ,.sel(shift), .q(q[3]));
endmodule
