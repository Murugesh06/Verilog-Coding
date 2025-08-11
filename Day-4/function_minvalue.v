`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 11:46:52
// Design Name: 
// Module Name: function_minvalue
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


module function_minvalue;
function automatic[7:0] min_val;
input [7:0]a,b;
begin
if(a<b)
min_val=a;
else
min_val=b;
end
endfunction
endmodule
