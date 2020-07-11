`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2020 11:43:45
// Design Name: 
// Module Name: div
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


module div(
    input clk,
    input clear,
    input [2:0] div,
    output logic q
    );
    
    enum logic [2:0] { 
    st0 = 3'b000,
    st1 = 3'b001,
    st2 = 3'b010,
    st3 = 3'b011,
    st4 = 3'b100,
    st5 = 3'b101,
    st6 = 3'b110 } state;
    
always @(posedge clk)
    if(clear) begin
    state <= st0;
    end
    else 
        case(state)
            st0 : begin
//            q <= 1'b1;
                if(div == 3'b001)
                state <= st0;
                else
                state <= st1;
            end
            st1: begin
//            q <= 1'b0;
                if(div == 3'b010) 
                state <= st0;
                else begin
                state <= st2;
                end
            end
            st2: begin
//            q <= 1'b0;
                if(div == 3'b011) 
                state <= st0;
                else begin
                state <= st3;
                end
            end
            st3: begin
//            q <= 1'b0;
                if(div == 3'b100) 
                state <= st0;
                else begin
                state <= st4;
                end
            end
            st4: begin
//            q <= 1'b0;
                if(div == 3'b101) 
                state <= st0;
                else begin
                state <= st5;
                end
            end
            st5: begin
//            q <= 1'b0;
                if(div == 3'b110) 
                state <= st0;
                else begin
                state <= st6;
                end
            end
            st6: begin
//            q <= 1'b0;
                state <= st0;
            end
        endcase    
 always_comb
if(state == st0) q <= 1'b1;
else 
q <= 1'b0; 
 
//always_comb
//case (state)
//    st0: q <= 1'b1;
//    st1: if (div > 3'b010) 
//            q <= 1'b1;
//            else
//            q <= 1'b0;
//    st2: if (div > 3'b100) 
//            q <= 1'b1;
//            else
//            q <= 1'b0;
//    st3: if (div > 3'b110) 
//            q <= 1'b1;
//            else
//            q <= 1'b0;	
//    st4: q <= 1'b0;	
//    st5: q <= 1'b0;
//    st6: q <= 1'b0;		
//    endcase	
 
 
endmodule
