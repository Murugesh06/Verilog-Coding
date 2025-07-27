`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 18:53:38
// Design Name: 
// Module Name: Bitwise_operations_TB
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


module Bitwise_operations_TB;
reg x,y;
wire out1,out2,out3,out4,out5;
Bitwise_operations uut(x,y,out1,out2,out3,out4,out5);
initial begin
$monitor("out1=%d, out2=%d, out3=%d,out4=%d,out5=%d",out1,out2,out3,out4,out5);
x=0;y=1;
#10;
x=1;y=1;
#10;
$finish();
end
endmodule
