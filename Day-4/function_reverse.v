`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 13:18:03
// Design Name: 
// Module Name: function_reverse
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


module function_reverse;
function [7:0] reverse_bits;
input [7:0] in;
integer i;
begin
reverse_bits=8'b0;
for(i=0;i<8;i=i+1)begin
reverse_bits[i]=in[7-i];
end
end
endfunction
endmodule
