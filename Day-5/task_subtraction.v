`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:08:03
// Design Name: 
// Module Name: task_subtraction
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


module task_subtraction;
reg [7:0]a,b;
reg [8:0]diff;

task subtractor;
input [7:0]in1,in2;
output [8:0]result;
begin
result=in1-in2;
end
endtask
endmodule
