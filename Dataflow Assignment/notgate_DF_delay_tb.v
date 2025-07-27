`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:29:00
// Design Name: 
// Module Name: notgate_DF_delay_tb
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


module notgate_DF_delay_tb;
reg a;
wire y;
notgate_DF_delay uut(a,y);
initial begin
$monitor("Time = %0t | a = %b | y = %b", $time, a, y);
a = 0; #10;
a = 1; #10;
a = 0; #10;
$finish();
end
endmodule
