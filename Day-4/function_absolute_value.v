`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 13:03:33
// Design Name: 
// Module Name: function_absolute_value
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


module function_absolute_value;
function [7:0] abs_val;
input signed [7:0]in;
begin
if(in<0)
abs_val=-in;
else
abs_val=in;
end
endfunction
endmodule
