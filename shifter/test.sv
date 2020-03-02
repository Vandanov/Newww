`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2020 10:33:28
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
    logic [3:0] in;
    logic [1:0] shift;
    logic [3:0] q;
shifter c(.in(in),.shift(shift),.q(q));
    

initial begin
//    shift = 3'b00 : q = in;
//    case(shift) 
//  3'b01 : begin
//           in = 4'b0000; q = 4'b0000; #10;//0 0
//           in = 4'b0001; q = 4'b1000; #10;// 1 8
//           in = 4'b0010; q = 4'b0001; #10;// 2 1
//           in = 4'b0100; q = 4'b0010; #10; //4 2
//           in = 4'b1000; q = 4'b0100; #10; //8 4
//        end
//   3'b10 : begin 
//           in = 4'b0000; q = 4'b0000; #10;//0 0
//           in = 4'b0001; q = 4'b0100; #10;// 1 8
//           in = 4'b0010; q = 4'b1000; #10;// 2 1
//           in = 4'b0100; q = 4'b0001; #10; //4 2
//           in = 4'b1000; q = 4'b0010; #10; //8 4
//    end
    
//   3'b11 : begin
//           in = 4'b0000; q = 4'b0000; #10;//0 0
//           in = 4'b0001; q = 4'b0010; #10;// 1 8
//           in = 4'b0010; q = 4'b0100; #10;// 2 1
//           in = 4'b0100; q = 4'b1000; #10; //4 2
//           in = 4'b1000; q = 4'b0001; #10; //8 4;
//   end
//endcase

in = 4'b0001;
repeat(4) begin
    shift = 2'b00; #10;
    repeat (3) begin
        shift =shift+1; #10;
        end;
        in = in << 1;
        end;

$finish;
end;

endmodule
