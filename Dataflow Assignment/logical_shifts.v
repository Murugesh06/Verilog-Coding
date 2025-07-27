`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 12:58:44
// Design Name: 
// Module Name: logical_shifts
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


module logical_shifts(input [3:0]x,output [3:0]lshift,[3:0]rshift);
assign lshift=x<<1;
assign rshift=x>>1;
endmodule
