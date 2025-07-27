`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 11:21:48
// Design Name: 
// Module Name: Replication_operator_tb
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


module Replication_operator_tb;
reg a;
reg [1:0]b;
reg [3:0]c;
wire [5:0]y;
Replication_operator uut(a,b,c,y);
initial begin
$monitor("a=%b, b=%b, c=%b => y=%b", a, b, c, y);
 a = 1; b = 2'b1x; c = 4'b1011; #10;
 a = 0; b = 2'b00; c = 4'b0101; #10;
 $finish();
 end
endmodule
