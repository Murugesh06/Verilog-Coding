`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:18:10
// Design Name: 
// Module Name: Cmos_inverter_TB
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


module Cmos_inverter_TB;
reg in;
wire out;
Cmos_inverter uut(in,out);
initial begin
in=0;#10;
in=1;#10;
$finish();
end
endmodule
