`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 14:42:39
// Design Name: 
// Module Name: mux4to1_DF_continous_assign_tb
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


module mux4to1_DF_continous_assign_tb;
reg s1,s0,i0,i1,i2,i3;
wire y;
mux4to1_DF_continous_assign uut(s1,s0,i0,i1,i2,i3,y);
initial begin
$monitor("y=%b",y);
i0=0;i1=1;i2=0;i3=1;
s1=0;s0=0;#10;
s1=0;s0=1;#10;
s1=1;s0=0;#10;
s1=1;s0=1;#10;
$finish();
end
endmodule
