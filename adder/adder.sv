`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2020 09:32:08
// Design Name: 
// Module Name: adder4
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


//module adder4(
//    input [3:0] a,
//    input [3:0] b,
//    input cin,
//    output [3:0] s,
//    output cout
//    );
    
    
//logic [4:0] c;

//assign c[0] = cin;

//genvar i;
//    generate
//    for (i=0; i < 4; i=i+1)
//      begin: label
//        assign s[i] = a[i] ^ b[i] ^ c[i];
//        assign c[i+1] = (a[i] & b[i]) | (( a[i] ^ b[i]) & c[i]);
//      end
//   endgenerate
			
//assign cout = c[4];			  
    
    
    
//endmodule



//module adder4(
//    input [3:0] a,
//    input [3:0] b,
//    input cin,
//    output [3:0] s,
//    output cout
//    );
    
    
//logic [4:0] c;
//logic [3:0] p,g;
//assign c[0] = cin;

//genvar i;
//    generate
//    for (i=0; i < 4; i=i+1)
//      begin: label
//        assign s[i] = a[i] ^ b[i] ^ c[i];
//        assign p[i] = a[i] ^ b[i];
//        assign g[i] = a[i] & b[i];
//      end
//   endgenerate
			
////assign c[1] = g[0] | (p[0] & c[0]);
////assign c[2] = g[1] | (p[1] & c[1]);
////assign c[3] = g[2] | (p[2] & c[2]);
////assign c[4] = g[3] | (p[3] & c[3]);

////assign c[1] = g[0] | (p[0] & c[0]);
////assign c[2] = g[1] | (p[1] & g[0] | (p[0] & c[0]));
////assign c[3] = g[2] | (p[2] & g[1] | (p[1] & g[0] | (p[0] & c[0])));
////assign c[4] = g[3] | (p[3] & g[2] | (p[2] & g[1] | (p[1] & g[0] | (p[0] & c[0]))));

//assign c[1] = g[0] | p[0] & cin;
//assign c[2] = g[1] 
//                | p[1] & g[0] 
//                | p[0] & p[0]  & c[0]; //propogate
//assign c[3] = g[2] | (p[2] & g[1] | (p[1] & g[0] | (p[0] & c[0])));
//assign c[4] = g[3] | (p[3] & g[2] | (p[2] & g[1] | (p[1] & g[0] | (p[0] & c[0]))));

//assign cout = c[4];			  
    
    
    
//endmodule

module c_gen(
    input [3:0] p,
    input [3:0] g,
    input cin,
    output [4:1] c,
    output p_g,
    output g_g
);

assign c[1] = g[0] |
             p[0] & cin;
             
assign c[2] = g[1] 
      | p[1] & g[0] 
      | p[1] & p[0]  & cin; //propogate
                
assign c[3] = g[2] 
      | p[2] & g[1] 
      | p[2] & p[1] & g[0] 
      | p[2] & p[1] & p[0] & cin;


assign c[4] = g[3] 
            | p[3] & g[2] 
            | p[3] & p[2] & g[1] 
            | p[3] & p[2] & p[1] & p[0] & cin;
		  
assign p_g = p[3] & p[2] & p[1] & p[0];

assign g_g = g[3]
     | p[3] & g[2]
     | p[3] & p[2] & g[1]
     | p[3] & p[2] & p[1] & g[0];
     
endmodule

module adder4(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] s,
    output cout,
    output p_g,
    output g_g
    );
    
    
logic [4:0] c;
logic [3:0] p,g;
assign c[0] = cin;

genvar i;
    generate
    for (i=0; i < 4; i=i+1)
      begin: label
        assign s[i] = a[i] ^ b[i] ^ c[i];
        assign p[i] = a[i] ^ b[i];
        assign g[i] = a[i] & b[i];
      end
   endgenerate
			
//assign c[1] = g[0] | (p[0] & c[0]);
//assign c[2] = g[1] | (p[1] & c[1]);
//assign c[3] = g[2] | (p[2] & c[2]);
//assign c[4] = g[3] | (p[3] & c[3]);

//assign c[1] = g[0] | (p[0] & c[0]);
//assign c[2] = g[1] | (p[1] & g[0] | (p[0] & c[0]));
//assign c[3] = g[2] | (p[2] & g[1] | (p[1] & g[0] | (p[0] & c[0])));
//assign c[4] = g[3] | (p[3] & g[2] | (p[2] & g[1] | (p[1] & g[0] | (p[0] & c[0]))));

//assign c[1] = g[0] |
//             p[0] & cin;
//assign c[2] = g[1] 
//                | p[1] & g[0] 
//                | p[1] & p[0]  & cin; //propogate
                
//assign c[3] = g[2] 
//            | p[2] & g[1] 
//            | p[2] & p[1] & g[0] 
//            | p[2] & p[1] & p[0] & cin;


//assign c[4] = g[3] 
//            | p[3] & g[2] 
//            | p[3] & p[2] & g[1] 
//            | p[3] & p[2] & p[1] & p[0] & cin;

c_gen c_gen(.p(p), .g(g), .cin(cin),.c(c[4:1]),.p_g(p_g),.g_g(g_g));
assign cout = c[4];			  
//assign p_g = p[3] & p[2] & p[1] & p[0];

//assign  g_g = g[3]
//            | p[3] & g[2]
//            | p[3] & p[2] & g[1]
//            | p[3] & p[2] & p[1] & g[0];
            
endmodule


module adder16(
    input [15:0] a,
    input [15:0] b,
    input cin,
    output [15:0] s,
    output cout,
    output p_g,
    output g_g
    );
    
    
logic [4:0] c;
logic [3:0] p,g;
assign c[0] = cin;

genvar i;
    generate
    for (i=0; i < 4; i=i+1)
      begin: label14
        adder4 add(.a(a[4*i+3:4*i]),
                   .b(b[4*i+3:4*i]),
                   .cin(c[i]),
                   .s(s[4*i+3:4*i]),
                   .cout(),
                   .p_g(p[i]),
                   .g_g(g[i]));
      end
   endgenerate

c_gen c_gen(.p(p), .g(g), .cin(cin),.c(c[4:1]),.p_g(p_g),.g_g(g_g));
//assign c[1] = g[0] |
//             p[0] & cin;
//assign c[2] = g[1] 
//                | p[1] & g[0] 
//                | p[1] & p[0]  & cin; //propogate
                
//assign c[3] = g[2] 
//            | p[2] & g[1] 
//            | p[2] & p[1] & g[0] 
//            | p[2] & p[1] & p[0] & cin;


//assign c[4] = g[3] 
//            | p[3] & g[2] 
//            | p[3] & p[2] & g[1] 
//            | p[3] & p[2] & p[1] & p[0] & cin;
assign cout = c[4];			  
//assign p_g = p[3] & p[2] & p[1] & p[0];

//assign  g_g = g[3]
//            | p[3] & g[2]
//            | p[3] & p[2] & g[1]
//            | p[3] & p[2] & p[1] & g[0];
endmodule

module adder64(
    input [63:0] a,
    input [63:0] b,
    input cin,
    output [63:0] s,
    output cout,
    output p_g,
    output g_g
    );
    
    
logic [4:0] c;
logic [3:0] p,g;
assign c[0] = cin;

genvar i;
    generate
    for (i=0; i < 4; i=i+1)
      begin: label16
        adder16 add(.a(a[16*i+15:16*i]),
                   .b(b[16*i+15:16*i]),
                   .cin(c[i]),
                   .s(s[16*i+15:16*i]),
                   .cout(),
                   .p_g(p[i]),
                   .g_g(g[i]));
      end
   endgenerate

c_gen c_gen(.p(p), .g(g), .cin(cin),.c(c[4:1]),.p_g(p_g),.g_g(g_g));
assign cout = c[4];			  
endmodule


//use 16bit -> 64 bit
