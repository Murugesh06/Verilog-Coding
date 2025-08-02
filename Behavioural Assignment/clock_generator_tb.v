`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 18:14:53
// Design Name: 
// Module Name: clock_generator_tb
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


module clock_generator_tb;
wire clk;
clock_generator uut(clk);
initial begin
$monitor("Time = %0t | clk = %b", $time, clk);
#50;
$finish();
end
endmodule
