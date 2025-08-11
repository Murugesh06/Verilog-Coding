`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:04:50
// Design Name: 
// Module Name: function_multiplication2
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


module function_multiplication2;
function [15:0]multiply;
input [7:0]a,b;
integer i;
begin
multiply=0;
for(i=0;i<8;i=i+1)begin
if(b[i])
multiply=multiply+(a<<i);
end
end
endfunction
endmodule
