`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 10:14:33
// Design Name: 
// Module Name: Two_bit_comparator_TB
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


module Two_bit_comparator_TB;
reg a0,b0,a1,b1;
wire out,out1,out2;
Two_bit_comparator uut(a0,b0,a1,b1,out,out1,out2);
initial begin
a0=0;b0=0;a1=0;b1=0;
#10
a0=0;b0=0;a1=0;b1=1;
#10
a0=0;b0=0;a1=1;b1=0;
#10
a0=1;b0=1;a1=0;b1=0;
#10
$finish();
end
endmodule
