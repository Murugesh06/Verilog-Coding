`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 11:08:21
// Design Name: 
// Module Name: UDP_Dlatch_TB
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


module UDP_Dlatch_TB;
reg d, en;
wire q;
UDP_Dlatch uut(q,en,d);
initial begin
en = 0; d = 0; #10;   // Q holds
d = 1; #10;           // Q holds

en = 1; #10;          // Q should latch d=1
d = 0; #10;           // Q should latch d=0
d = 1; #10;           // Q should latch d=1

en = 0; d = 0; #10;   // Q holds at 1
$finish();
end
endmodule
