`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 13:24:47
// Design Name: 
// Module Name: function_reverse_tb
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


module function_reverse_tb;
reg [7:0]in;
wire [7:0]out;
function_reverse uut();
initial begin;
in = 8'b00000001;
$display("Input = %b, Reversed = %b", in, uut.reverse_bits(in));
in = 8'b10101010; 
$display("Input = %b, Reversed = %b", in, uut.reverse_bits(in));
$finish();
end
endmodule
