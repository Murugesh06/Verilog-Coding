`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:25:08
// Design Name: 
// Module Name: function_AND
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


module function_AND;
function and_result;
input [7:0]in;
integer i;
begin
and_result=1'b1;
for(i=0;i<8;i=i+1)begin
and_result=and_result&in[i];
end
end
endfunction
endmodule
