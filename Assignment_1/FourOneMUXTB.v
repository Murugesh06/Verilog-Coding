`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:49:08
// Design Name: 
// Module Name: Four_One_MUX_TB
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


module Four_One_MUX_TB;
reg a,b,c,d,s0,s1;
wire out;
Four_One_MUX (a,b,c,d,s0,s1,out);
initial begin
s0=0;s1=0;a=1;b=0;c=0;d=0;
#10
s0=1;s1=0;a=0;b=1;c=0;d=0;
#10
s0=0;s1=1;a=0;b=0;c=1;d=0;
#10
s0=1;s1=1;a=0;b=0;c=0;d=1;
#10
$finish();
end
endmodule
