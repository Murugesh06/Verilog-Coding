`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:51:16
// Design Name: 
// Module Name: function_equal_tb
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


module function_equal_tb;
reg [7:0]a,b;
function_equal uut();
initial begin
 a = 8'hAA; b = 8'hAA;
 $display("a = %h, b = %h => Equal = %b", a, b, uut.is_equal(a, b));
 a = 8'd15; b = 8'd10;
 $display("a = %h, b = %h => Equal = %b", a, b, uut.is_equal(a, b));
 $finish();
 end
endmodule
