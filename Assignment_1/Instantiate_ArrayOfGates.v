`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 13:58:23
// Design Name: 
// Module Name: Instantiate_ArrayOfGates
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


module Instantiate_ArrayOfGates(input [3:0]a,[3:0]b,output [3:0]y);
nand nand_array[3:0](y,a,b);
endmodule
