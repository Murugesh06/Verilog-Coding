`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 16:20:55
// Design Name: 
// Module Name: inertial_delay_tb
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


module inertial_delay_tb;
reg a;
wire y;
inertial_delay uut(a,y);
initial begin
$monitor("Time=%0t | a=%b | y=%b", $time, a, y);
a = 0; #3;
a = 1; #2;  
a = 0; #10;
$finish;
end
endmodule
