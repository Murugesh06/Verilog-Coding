`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:48:35
// Design Name: 
// Module Name: alu_conditional
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


module alu_conditional(input [3:0]a,[3:0]b,sel,output [3:0]y);
assign y=(sel==1'b1)?(a+b):(a-b);
endmodule
