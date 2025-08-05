`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 09:24:02
// Design Name: 
// Module Name: function_calls_function_tb
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


module function_calls_function_tb;
reg [7:0]num;
function_calls_function uut();
initial begin
num=8'd5;
$display("num=%d square=%d",num,uut.square(num));
num=8'd6;
$display("num=%d square=%d",num,uut.square(num));
$finish();
end
endmodule
