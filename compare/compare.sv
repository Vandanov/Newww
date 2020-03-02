`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2020 09:41:41
// Design Name: 
// Module Name: compare
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


module compare(
    input [1:0] a,
    input [1:0] b,
    output greater,
    output less
    );
    
assign greater = a[1] & !b[1]
                | !a[1] & !b[1] & a[0] & !b[0]
                | a[1] & b[1] & a[0] & !b[0];
assign less = !a[1] & b[1]
                | !a[1] & !b[1] & !a[0] & b[0]
                | a[1] & b[1] & !a[0] & b[0];

endmodule


module cmp4(
    input [3:0] a,
    input [3:0] b,
    output Greater,
    output Less
    );
    
logic [1:0] g,l;

compare c0(.a(a[1:0]), .b(b[1:0]), .greater(g[0]), .less(l[0]));    
compare c1(.a((a[2], g[0])), .b((b[2],l[0])), .greater(g[1]), .less(l[1]));    
compare c2(.a((a[3], g[1])), .b((b[3],l[1])), .greater(Greater), .less(Less));

//compare c0(.a(a[1:0]), .b(b[1:0]), .greater(g[0]), .less(l[0]));    
//compare c1(.a(a[3:2]), .b(b[3:2]), .greater(g[1]), .less(l[1]));    
//compare c2(.a(g), .b(l), .greater(Greater), .less(Less));

//genvar i;
//generate
//    for(i=0; i < 2; i=i+1)
//    begin: c
//compare c0(.a(a[i*2+1:i*2]), .b(b[i*2+1:i*2]), .greater(g[i]), .less(l[i]));    
//    end
//endgenerate
//compare c2(.a(g), .b(l), .greater(Greater), .less(Less));



endmodule
