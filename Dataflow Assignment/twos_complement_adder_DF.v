`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 20:03:24
// Design Name: 
// Module Name: twos_complement_adder_DF
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


module twos_complement_adder_DF( input  [3:0] x,input  [3:0] y,input c_in,output [3:0] sum,output c_out);
 wire [3:0] t;
 assign t = y ^ {4{c_in}};
 assign {c_out, sum} = x + t + c_in;
endmodule
