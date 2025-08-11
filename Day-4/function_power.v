`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:48:23
// Design Name: 
// Module Name: task_power
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


module task_power;
function is_power_of_two;
input [7:0]num;
begin
if(num==0)
is_power_of_two=0;
else
is_power_of_two=(num&(num-1))==0;
end
endfunction
endmodule
