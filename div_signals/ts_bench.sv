`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2020 12:21:55
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
    logic clk, clear , q;
    logic [2:0] div;
div DUT(.clear(clear),.q(q),.clk(clk) , .div(div) );
parameter PERIOD = 10;
always begin
    clk = 1'b0;
    #(PERIOD/2) clk = 1'b1;
    #(PERIOD/2);
end

initial begin
    clear = 1; div = 3'b010; #20;
    clear = 0; #200;
    clear = 1; div = 3'b011; #20;
    clear = 0; #200;
 clear = 1; div = 3'b100; #20;
     clear = 0; #200;
  clear = 1; div = 3'b101; #20;
      clear = 0; #200;
        clear = 1; div = 3'b110; #20;
      clear = 0; #200;
        clear = 1; div = 3'b111; #20;
      clear = 0; #200;
      $finish;
      end;
endmodule
