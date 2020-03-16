`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2020 09:32:43
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


//module ts_bench();

//logic [3:0] a,b,s;
//logic       cin,cout;

//adder4 DUT(.a(a),.b(b),.s(s),.cin(cin),.cout(cout));

//initial begin
//    {cin, a, b } = 9'b000000000;#10;
//    repeat (511) begin
//        {cin,a,b} = {cin,a,b} +1;#10;
//    end;
//$finish;
//end;
//module ts_bench16();

//logic [15:0] a,b,s;
//logic       cin,cout;

//adder16 DUT(.a(a),.b(b),.s(s),.cin(cin),.cout(cout));

//initial begin
//    a = 16'h0000; b = 16'h0000; cin = 1'b0; #10;
//    a = 16'hffff; b = 16'h0000; cin = 1'b0; #10;
//    a = 16'hffff; b = 16'h0000; cin = 1'b1; #10;
//    a = 16'h0000; b = 16'hffff; cin = 1'b0; #10;
//    a = 16'h0000; b = 16'hffff; cin = 1'b1; #10;
//    a = 16'h5555; b = 16'haaaa; cin = 1'b0; #10;
//    a = 16'haaaa; b = 16'h5555; cin = 1'b1; #10;
//$finish;
//end;



//endmodule

module ts_bench64();

logic [63:0] a,b,s;
logic       cin,cout;

adder64 DUT(.a(a),.b(b),.s(s),.cin(cin),.cout(cout));

initial begin
    a = 64'h0000; b = 16'h0000; cin = 1'b0; #10;
    a = 16'hffff; b = 16'h0000; cin = 1'b0; #10;
    a = 16'hffff; b = 16'h0000; cin = 1'b1; #10;
    a = 16'h0000; b = 16'hffff; cin = 1'b0; #10;
    a = 16'h0000; b = 16'hffff; cin = 1'b1; #10;
    a = 16'h5555; b = 16'haaaa; cin = 1'b0; #10;
    a = 16'haaaa; b = 16'h5555; cin = 1'b1; #10;
$finish;
end;



endmodule
