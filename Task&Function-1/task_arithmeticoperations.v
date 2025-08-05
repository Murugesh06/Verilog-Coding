`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 19:46:46
// Design Name: 
// Module Name: task_arithmeticoperations
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


module task_arithmeticoperations;
reg [7:0]a,b;
reg [15:0]result;

task add;
input [7:0]x,y;
output [15:0]sum;
begin
sum=x+y;
end
endtask

task sub;
input [7:0]x,y;
output [15:0]sub;
begin
sub=x-y;
end
endtask

task mul;
input [7:0]x,y;
output [15:0]prod;
begin
prod=x*y;
end
endtask

task div;
input [7:0]x,y;
output [15:0]quot;
begin
if(y!=0)
quot=x/y;
else
quot=16'hxxxx;
end
endtask

initial begin
a=8'd5;b=8'd5;
add(a, b, result);
$display("Addition:      %d + %d = %d", a, b, result);

sub(a, b, result);
$display("Subtraction:   %d - %d = %d", a, b, result);

mul(a, b, result);
$display("Multiplication:%d * %d = %d", a, b, result);

div(a, b, result);
$display("Division:      %d / %d = %d", a, b, result);

$finish();
end
endmodule
