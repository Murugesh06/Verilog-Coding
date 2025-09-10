`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:28:56
// Design Name: 
// Module Name: function_countones_tb
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


module function_countones_tb;
reg [7:0]test_data;
function_countones dut();
initial begin
test_data = 8'b10101010; 
$display("Input = %b, Count of 1's = %0d", test_data, dut.count_ones(test_data));

test_data = 8'b11111111; 
$display("Input = %b, Count of 1's = %0d", test_data, dut.count_ones(test_data));
$finish();
end
endmodule
