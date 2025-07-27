`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:18:50
// Design Name: 
// Module Name: fourone_mux_conditional_tb
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


module fourone_mux_conditional_tb;
reg [1:0] sel;
reg a, b, c, d;
wire y;
fourone_mux_conditional uut(sel,a,b,c,d,y);
initial begin
$monitor("sel=%b | a=%b, b=%b, c=%b, d=%b => y=%b", sel, a, b, c, d, y);
 a = 0; b = 1; c = 0; d = 1;
 sel = 2'b00; #5;
 sel = 2'b01; #5;
 sel = 2'b10; #5;
 sel = 2'b11; #5;
 $finish();
 end
endmodule
