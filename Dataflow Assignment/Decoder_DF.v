`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:26:26
// Design Name: 
// Module Name: Decoder_DF
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


module Decoder_DF(input a,b,output [3:0]y);
assign y[0]=(~a)&(~b);
assign y[1]=(~a)&b;
assign y[2]=a&(~b);
assign y[3]=a&b;
endmodule
