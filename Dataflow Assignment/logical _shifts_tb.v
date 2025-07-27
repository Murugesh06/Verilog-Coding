`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 13:01:03
// Design Name: 
// Module Name: logical _shifts_tb
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


module logical_shifts_tb;
reg [3:0]x;
wire [3:0]lshift,rshift;
logical_shifts uut(x,lshift,rshift);
initial begin
$monitor(" x=%b | Left Shift=%b | Right Shift=%b", x, lshift, rshift);

x = 4'b1010; #5;
x = 4'b0111; #5;
$finish();
end
endmodule
