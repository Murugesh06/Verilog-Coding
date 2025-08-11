`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 13:13:29
// Design Name: 
// Module Name: mux8to1_forloop_tb
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


module mux8to1_forloop_tb;
reg [7:0]in;
reg [2:0]sel;
wire y;
mux8to1_forloop uut(in,sel,y);
initial begin
$monitor(" in = %b | sel = %b | y = %b",in, sel, y);
in=8'b10010010;
        sel = 3'd0; #10;
        sel = 3'd1; #10;
        sel = 3'd2; #10;
        sel = 3'd3; #10;
        sel = 3'd4; #10;
        sel = 3'd5; #10;
        sel = 3'd6; #10;
        sel = 3'd7; #10;
        $finish();
        end
endmodule
