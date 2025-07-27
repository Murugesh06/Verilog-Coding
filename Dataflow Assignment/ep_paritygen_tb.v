`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 11:36:59
// Design Name: 
// Module Name: ep_paritygen_tb
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


module ep_paritygen_tb;
reg [8:0]x;
wire ep,op;
ep_paritygen uut(x,ep,op);
initial begin
$monitor("x=%b | Even Parity (ep)=%b | Odd Parity (op)=%b",  x, ep, op);
x = 9'b000000000; #10;
x = 9'b101010101; #10;
$finish();
end
endmodule
