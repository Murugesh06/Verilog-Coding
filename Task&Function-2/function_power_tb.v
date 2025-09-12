`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:00:19
// Design Name: 
// Module Name: task_power_tb
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


module task_power_tb;
reg [7:0]num;
task_power uut();
initial begin
num = 8'd0;
$display("num = %0d => Power of 2? %b", num, uut.is_power_of_two(num));

num = 8'd1;
$display("num = %0d => Power of 2? %b", num, uut.is_power_of_two(num));

 num = 8'd2;
 $display("num = %0d => Power of 2? %b", num, uut.is_power_of_two(num));
 
 $finish();
 end
endmodule
