`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 17:41:40
// Design Name: 
// Module Name: task_addition
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


module task_addition;
reg [7:0]a,b;
reg [8:0]out;
task add8;
input [7:0]in1,in2;
output [8:0]res;
begin
res=in1+in2;
end
endtask
endmodule
