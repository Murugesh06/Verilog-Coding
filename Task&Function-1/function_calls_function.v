`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 21:42:55
// Design Name: 
// Module Name: function_calls_function
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


module function_calls_function;
function [15:0] square;
input [7:0]in;
begin
square=mul(in);
end
endfunction
function [15:0] mul;
input [7:0]i;
begin
mul=i*i;
end
endfunction
endmodule
