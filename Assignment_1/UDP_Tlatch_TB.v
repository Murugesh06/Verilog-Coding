`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 13:00:07
// Design Name: 
// Module Name: UDP_Tlatch_TB
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


module UDP_Tlatch_TB;
reg en,t;
wire q;
UDP_Tlatch uut(q,t,en);
initial begin
en=0;t=0;
#10
en=0;t=1;
#10
en=1;t=1;
#10
en=1;t=0;
#10
$finish();
end
endmodule
