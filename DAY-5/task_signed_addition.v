`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 16:10:12
// Design Name: 
// Module Name: task_signed_addition
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


module task_signed_addition;
reg signed [7:0] x,y;
reg signed [8:0] result;
task add_task;
input signed [7:0] a,b;
output signed [8:0] sum;
begin
sum=a+b;
$display(" a = %0d, b = %0d, sum = %0d", a, b, sum);
end
endtask 
initial begin
 x = -20;
 y = 15;
 add_task(x, y, result);

 x = -50;
 y = -10;
 add_task(x, y, result);
 $finish();
 end
endmodule
