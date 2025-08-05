`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 15:26:45
// Design Name: 
// Module Name: function_sum_of_2numbers_tb
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


module function_sum_of_2numbers_tb;
reg [7:0]a,b;
wire [7:0]out;
function_sum_of_2numbers uut();
initial begin
a=8'd5;b=8'd9;
$display("a=%d b=%d sum=%d",a,b,uut.sum(a,b));
a=8'd10;b=8'd2;
$display("a=%d b=%d sum=%d",a,b,uut.sum(a,b));
$finish();
end
endmodule
