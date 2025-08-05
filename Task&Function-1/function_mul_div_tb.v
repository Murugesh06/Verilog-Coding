`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 19:31:48
// Design Name: 
// Module Name: function_mul_div_tb
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


module function_mul_div_tb;
reg [7:0]a,b;
function_mul_div uut();
initial begin
a=8'd5;b=8'd5;
$display("a=%d b=%d mul=%d div=%d",a,b,uut.mul(a,b),uut.div(a,b));
a=8'd15;b=8'd3;
$display("a=%d b=%d mul=%d div=%d",a,b,uut.mul(a,b),uut.div(a,b));
$finish();
end
endmodule
