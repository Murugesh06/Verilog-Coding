`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 17:13:40
// Design Name: 
// Module Name: saturating_adder_tb
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


module saturating_adder_tb;
reg  [3:0] a, b;
wire [3:0] sum;
saturating_adder uut(a,b,sum);
initial begin
$monitor("a=%d | b=%d | sum=%d", a, b, sum);
a = 4'd5;  b = 4'd6;   #10;  // sum = 11
a = 4'd15; b = 4'd1;   #10;  // sum > 15 ? clamp to 15
$finish();
end
endmodule
