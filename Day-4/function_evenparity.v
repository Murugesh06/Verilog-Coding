`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:03:51
// Design Name: 
// Module Name: function_evenparity
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


module function_evenparity;
function automatic parity_even;
input [7:0]data;
begin
parity_even=~^data;
end
endfunction
endmodule
