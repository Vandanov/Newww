`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2020 10:09:22
// Design Name: 
// Module Name: cnt12
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


module cnt12(
    input clk,
    input reset,
    input ud,
    output logic [3:0] q
    );
    //cnt5:
    
//  always @(posedge clk) begin
//    if(reset)
//        q<=4'b0000;
//    else if (ud) begin
//       q[0] <= !q[0];
//       q[1] <= !q[3] & !q[2] & !q[1] & q[0]
//             | !q[3] & !q[2] & q[1] & !q[0];
//       q[2] <= !q[3] & !q[2] & q[1] & !q[0]
//             | !q[3] & !q[2] & q[1] & q[0];
//       q[3] <=  !q[3] & !q[2] & q[1] & q[0]
//             | !q[3] & q[2] & !q[1] & !q[0];
//        end
//    else begin
//        if(q==0)
//            q<=4'b1011;
//        else 
//            q<=q-1;
//        end
// end       
    
//endmodule




//1 variant cnt 12

always @(posedge clk) begin
    if (reset) q<=4'b0000;
    else
        if(ud) begin
            q[0] <= !q[0];
            q[1] <= !q[3] & !q[2] & !q[1] & q[0]
                 |  !q[3] & !q[2] & q[1] & !q[0]
                 |  !q[3] & q[2] & !q[1] & q[0]
                 |  !q[3] & q[2] & q[1] & !q[0]
                 |  q[3] & !q[2] & !q[1] & q[0] 
                 |  q[3] & !q[2] & q[1] & !q[0];
            q[2] <= !q[3] & !q[2] & q[1] & q[0]
                 |  !q[3] & q[2] & !q[1] & !q[0]
                 |  !q[3] & q[2] & !q[1] & q[0]
                 |  !q[3] & q[2] & q[1] & !q[0];
    
            q[3] <= !q[3] & q[2] & q[1] & q[0]
                 |  q[3] & !q[2] & !q[1] & !q[0]
                 |  q[3] & !q[2] & !q[1] & q[0]
                 |  q[3] & !q[2] & q[1] & !q[0];
      end
      else begin
            q[0] <= !q[0];
            q[1] <= !q[3] & !q[2] & !q[1] & !q[0]
                 |  !q[3] & !q[2] & q[1] & q[0]
                 |  !q[3] & q[2] & !q[1] & !q[0]
                 |  !q[3] & q[2] & q[1] & q[0]
                 |  q[3] & !q[2] & !q[1] & !q[0] 
                 |  q[3] & !q[2] & q[1] & q[0];
            q[2] <= !q[3] & q[2] & !q[1] & q[0]
                 |  !q[3] & q[2] & q[1] & !q[0]
                 |  !q[3] & q[2] & q[1] & q[0]
                 |  q[3] & !q[2] & !q[1] & !q[0];
    
            q[3] <= !q[3] & !q[2] & !q[1] & !q[0]
                 |  q[3] & !q[2] & !q[1] & q[0]
                 |  q[3] & !q[2] & q[1] & !q[0] 
                 |  q[3] & !q[2] & q[1] & q[0]; 
    end
 
       
end
endmodule

//2 variant cnt 12

//always @(posedge clk) begin
//    if (reset) q<=4'b0000;
//    else  begin
//        q[0] <= !q[0];
//        q[1] <= !q[3] & !q[2] & !q[1] & q[0] & ud
//             |  !q[3] & !q[2] & q[1] & !q[0] & ud
//             |  !q[3] & q[2] & !q[1] & q[0] & ud
//             |  !q[3] & q[2] & q[1] & !q[0] & ud
//             |  q[3] & !q[2] & !q[1] & q[0] & ud
//             |  q[3] & !q[2] & q[1] & !q[0] & ud
//             |  !q[3] & !q[2] & !q[1] & !q[0] & !ud
//             |  !q[3] & !q[2] & q[1] & q[0] & !ud
//             |  !q[3] & q[2] & !q[1] & !q[0] & !ud
//             |  !q[3] & q[2] & q[1] & q[0] & !ud
//             |  q[3] & !q[2] & !q[1] & !q[0] & !ud
//             |  q[3] & !q[2] & q[1] & q[0] & !ud;
//        q[2] <= !q[3] & !q[2] & q[1] & q[0]  & ud
//             |  !q[3] & q[2] & !q[1] & !q[0] & ud
//             |  !q[3] & q[2] & !q[1] & q[0] & ud
//             |  !q[3] & q[2] & q[1] & !q[0] & ud
//             |  !q[3] & q[2] & !q[1] & q[0] & !ud
//             |  !q[3] & q[2] & q[1] & !q[0] & !ud
//             |  !q[3] & q[2] & q[1] & q[0] & !ud
//             |  q[3] & !q[2] & !q[1] & !q[0] & !ud;
//        q[3] <= !q[3] & q[2] & q[1] & q[0]  & ud
//             |  q[3] & !q[2] & !q[1] & !q[0] & ud
//             |  q[3] & !q[2] & !q[1] & q[0] & ud
//             |  q[3] & !q[2] & q[1] & !q[0] & ud
//             |  q[3] & !q[2] & !q[1] & q[0]  & !ud
//             |  !q[3] & !q[2] & !q[1] & !q[0] & !ud
//             |  q[3] & !q[2] & q[1] & !q[0] & !ud
//             |  q[3] & !q[2] & q[1] & q[0] & !ud;
//     end
//end




