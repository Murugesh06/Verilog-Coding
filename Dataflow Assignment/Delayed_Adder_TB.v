`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 18:29:47
// Design Name: 
// Module Name: Delayed_Adder_TB
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


module Delayed_Adder_TB;
reg [3:0]a,b;
wire [4:0]sum;
Delayed_Adder uut(a,b,sum);
initial begin
$monitor(" a = %d, b = %d, sum = %d",a, b, sum);
a=4;b=3;#10;
a=5;b=3;#10;
$finish();
end
endmodule
