`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 18:35:26
// Design Name: 
// Module Name: D_latch_using_2to1mux_tb
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


module D_latch_using_2to1mux_tb;
reg d,en;
wire q;
D_latch_using_2to1mux uut(d,en,q);
initial begin
 $monitor(" D = %b | En = %b | Q = %b", d, en, q);
 d=0;en=0;#10;
 d=0;en=1;#10;
 d=1;en=1;#10;
 $finish();
 end
endmodule
