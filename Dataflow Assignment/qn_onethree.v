`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 12:42:37
// Design Name: 
// Module Name: qn_onethree
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


module qn_onethree(input [3:0]a,[3:0]b,output out1,out2);
assign out1=(a==b);
assign out2=(a===b);
endmodule
