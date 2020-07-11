`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2020 09:44:06
// Design Name: 
// Module Name: test
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


module test();
    logic[1:0] a,b;
    logic      greater,less;
compare c(.a(a),.b(b),.greater(greater),.less(less));

initial begin
    {a, b} = 4'b0000; #10;
    repeat (15) begin
        {a,b} = {a,b} +1; #10;
    end
$finish;
end;

endmodule
module test4();
    logic[3:0] a,b;
    logic      Greater,Less;
cmp4 c(.a(a),.b(b),.Greater(Greater),.Less(Less));

initial begin
    {a, b} = 8'b00000000; #10;
    repeat (255) begin
        {a,b} = {a,b} +1; #10;
    end
$finish;
end;

endmodule
