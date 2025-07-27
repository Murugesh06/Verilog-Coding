`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 11:18:29
// Design Name: 
// Module Name: Replication_operator
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


module Replication_operator(input a,[1:0]b,[3:0]c,output [5:0]y);
assign y={a, {4{b[0]}}, c[1]};
endmodule
