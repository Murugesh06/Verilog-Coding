`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 18:32:16
// Design Name: 
// Module Name: D_latch_using_2to1mux
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


module D_latch_using_2to1mux(input d,en,output reg q);
always @(*)begin
    if(en)
        q=d;
     else
        q=q;
  end
endmodule
