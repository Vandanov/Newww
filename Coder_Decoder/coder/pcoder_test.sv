`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2020 10:48:55
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

    logic [7:0] in;
    logic [2:0] code;
    
    prcoder DUT (.in(in),
                .code(code)
                );
                
 initial begin
    in = 0; #10
    repeat (255) begin
        in = in+1; #10;
    end
 $finish;
 end;
 
endmodule
