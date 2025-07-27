`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:41:18
// Design Name: 
// Module Name: buffer_delay_buf_tb
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


module buffer_delay_buf_tb;
reg a;
wire y;
buffer_delay_buf uut(a,y);
initial begin
$monitor("Time = %0t | a = %b | y = %b", $time, a, y);
 a = 0; #10;
 a = 1; #10;
 a = 0; #10;
 $finish();
 end
endmodule
