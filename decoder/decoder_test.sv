`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2020 09:49:40
// Design Name: 
// Module Name: ts_decoder
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


module ts_decoder(

    );
    
    logic [2:0] code;
    logic [7:0] q;
    
decoder DUT(.code(code),
            .q(q)
            );
            
 initial begin
    code = 3'b000; #10;
    code = 3'b001; #10;
    code = 3'b010; #10;
    code = 3'b011; #10;
    code = 3'b100; #10;
    code = 3'b101; #10;
    code = 3'b110; #10;
    code = 3'b111; #10;
    $finish;
 end;
endmodule
