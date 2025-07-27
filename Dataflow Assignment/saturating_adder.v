`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 17:09:34
// Design Name: 
// Module Name: saturating_adder
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


module saturating_adder(input [3:0]a,[3:0]b,output [3:0]sum);
wire [4:0]full_sum;
assign full_sum=a+b;
assign sum=(full_sum>4'b1111)?4'b1111:full_sum[4:0];
endmodule
