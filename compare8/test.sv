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
    repeat (2^8-1) begin
        {a,b} = {a,b} +1; #10;
    end
$finish;
end;

endmodule
module test8();
    logic [7:0] a,b;
    logic      GReater,LEss;
cmp8 c1(.a(a),.b(b),.GReater(GReater),.LEss(LEss));

initial begin
    {a, b} = 16'b0000000000000000; #10;
    repeat (65535) begin
        {a,b} = {a,b} +1; #10;
    end
$finish;
end;

endmodule
