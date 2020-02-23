`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2020 10:45:59
// Design Name: 
// Module Name: prcoder
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


module prcoder(
    input [7:0] in,
    output logic [2:0] code
    );
    
always_comb
//    casex(in)
//        8'b00000000 : code = 3'b000;
//        8'b00000001 : code = 3'b000;
//        8'b0000001x : code = 3'b001;
//        8'b000001xx : code = 3'b010;
//        8'b00001xxx : code = 3'b011;
//        8'b0001xxxx : code = 3'b100;
//        8'b001xxxxx : code = 3'b101;
//        8'b01xxxxxx : code = 3'b110;
//        8'b1xxxxxxx : code = 3'b111;
//    endcase
 assign   code[2] = in[5] | in[8] | in[6] | in[7];
 assign   code[1] = in[2] | in[3] | in[6] | in[7];
 assign   code[0] = in[2] | in[3] | in[6] | in[7];


//   if (in[3]) code = 2'b11;
//   else if (in[2]) code = 2'b10;
//   else if (in[1]) code = 2'b01;
	
//   else code = 2'b00;
	
		
//   if (in[7]) code = 3'b111;
//   else if (in[6]) code = 3'b110;
//   else if (in[5]) code = 3'b101;
//   else if (in[4]) code = 3'b100;
//   else if (in[3]) code = 3'b011;
//   else if (in[2]) code = 3'b010;
//   else if (in[1]) code = 3'b001;
//   else code = 3'b000;
	

endmodule
