`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:12:59
// Design Name: 
// Module Name: function_multiplication2_tb
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


module function_multiplication2_tb;
reg [7:0]a,b;
wire [15:0]result;
function_multiplication2 uut();
initial begin
a = 8'd5; b = 8'd3;
$display("a = %d, b = %d, result = %d", a, b, uut.multiply(a, b));
a = 8'd12; b = 8'd4;
$display("a = %d, b = %d, result = %d", a, b, uut.multiply(a, b));
$finish();
end
endmodule
