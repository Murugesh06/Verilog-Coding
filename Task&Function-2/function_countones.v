`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:16:15
// Design Name: 
// Module Name: function_countones
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


module function_countones;
function automatic [7:0] count_ones;
input [7:0] data;
integer i;
begin
count_ones=0;
for(i=0;i<8;i=i+1)begin
count_ones=count_ones+data[i];
end
end
endfunction
endmodule
