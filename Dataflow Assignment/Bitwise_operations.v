`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 18:50:16
// Design Name: 
// Module Name: Bitwise_operations
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


module Bitwise_operations(input x,y,output out1,out2,out3,out4,out5);
assign out1=~x;
assign out2=x&y;
assign out3=x|y;
assign out4=x^y;
assign out5=x^~y;
endmodule
