`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 11:50:29
// Design Name: 
// Module Name: detector_zero_one_tb
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


module detector_zero_one_tb;
reg [7:0]x;
wire zero,one;
detector_zero_one uut(x,zero,one);
initial begin
$monitor("x = %b | zero = %b | one = %b", x, zero, one);
x = 8'b00000000; #10; // All zeros -> zero = 1, one = 0
x = 8'b11111111; #10; // All ones  -> zero = 0, one = 1
x = 8'b10101010; #10; // Mixed     -> zero = 0, one = 0
$finish();
end
endmodule
