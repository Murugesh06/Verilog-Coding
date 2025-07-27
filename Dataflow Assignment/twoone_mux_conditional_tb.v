`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 13:10:41
// Design Name: 
// Module Name: twoone_mux_conditional_tb
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


module twoone_mux_conditional_tb;
reg a,b,sel;
wire y;
twoone_mux_conditional uut(a,b,sel,y);
initial begin
$monitor("sel=%b | a=%b, b=%b => y=%b", sel, a, b, y);
 a = 0; b = 0; sel = 0; #5;
 a = 0; b = 1; sel = 0; #5;
 a = 1; b = 0; sel = 1; #5;
 a = 1; b = 1; sel = 1; #5;
 $finish();
 end
endmodule
