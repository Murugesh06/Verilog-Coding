`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:28:56
// Design Name: 
// Module Name: encoder_conditional
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


module encoder_conditional(input [3:0]din,output [1:0]dout);
assign dout=(din[3])?2'b11:(din[2])?2'b10:(din[1])?2'b01:2'b00;
endmodule
