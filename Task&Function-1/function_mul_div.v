`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 19:27:07
// Design Name: 
// Module Name: function_mul_div
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


module function_mul_div;
function [15:0]mul;
input [7:0]in1,in2;
begin
mul=in1*in2;
end
endfunction

function [7:0]div;
input [7:0]in1,in2;
begin
div=in1/in2;
end
endfunction
endmodule
