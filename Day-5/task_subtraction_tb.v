`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:11:36
// Design Name: 
// Module Name: task_subtraction_tb
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


module task_subtraction_tb;
reg [7:0]a,b;
reg [8:0]diff;
task_subtraction uut(a,b,diff);
task subtractor;
input [7:0]in1,in2;
output [8:0]result;
begin
result=in1-in2;
end
endtask
initial begin
a=8'd150;
b=8'd100;
subtractor(a,b,diff);
$display("a = %d, b = %d, difference = %d", a, b, diff); 
#10;
$finish();
end
endmodule
