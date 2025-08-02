`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 13:07:54
// Design Name: 
// Module Name: mux8to1_forloop
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


module mux8to1_forloop(
input [7:0]in,
input [2:0]sel,
output reg y);
integer i;
always @(*)begin
y=0;
for(i=0;i<8;i=i+1)begin
    if(sel==i)
        y=in[i];
end
end
endmodule
