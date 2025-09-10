`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 14:37:29
// Design Name: 
// Module Name: function_AND_tb
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


module function_AND_tb;
reg [7:0]in;
wire result;
function_AND uut();
initial begin
 in = 8'b11111111; 
 $display("in = %b, AND result = %b", in, uut.and_result(in));

 in = 8'b10111111; 
 $display("in = %b, AND result = %b", in, uut.and_result(in));
 $finish();
 end
endmodule
