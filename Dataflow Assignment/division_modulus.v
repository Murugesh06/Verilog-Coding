`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 10:16:10
// Design Name: 
// Module Name: division_modulus
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


module division_modulus(input [7:0]a,[7:0]b,output [7:0]x,[7:0]y);
assign x=a/b;
assign y=a%b;
endmodule
