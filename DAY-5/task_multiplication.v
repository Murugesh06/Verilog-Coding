`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 18:14:47
// Design Name: 
// Module Name: task_multiplication
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


module task_multiplication;
reg [7:0]a,b;
reg [7:0]out;
task multiplication;
input [7:0]in1,in2;
output [7:0]out;
begin
out=in1*in2;
$display("a=%d b=%d out=%d",in1,in2,out);
end
endtask
initial begin
a=5;b=10;
multiplication(a,b,out);
a=10;b=15;
multiplication(a,b,out);
end
endmodule
