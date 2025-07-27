`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:51:42
// Design Name: 
// Module Name: alu_conditional_tb
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


module alu_conditional_tb;
reg  [3:0]a, b;
reg   sel;
wire [3:0]y;
alu_conditional uut(a,b,sel,y);
initial begin
$monitor(" sel=%b | a=%d | b=%d | y=%d", sel, a, b, y);
 a = 4; b = 2; sel = 1; #10;  // a + b = 6
 a = 4; b = 2; sel = 0; #10;  // a - b = 2
 a = 7; b = 5; sel = 1; #10;  // a + b = 12
 a = 7; b = 5; sel = 0; #10;  // a - b = 2

 $finish;
 end
endmodule
