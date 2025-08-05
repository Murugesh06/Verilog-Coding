`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 21:16:55
// Design Name: 
// Module Name: function_right_shift
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


module function_right_shift;
function [7:0] rshift;
input [7:0]in;
input [7:0]amt;
begin
rshift=in>>amt;
end
endfunction
endmodule
