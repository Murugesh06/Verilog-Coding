`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:57:26
// Design Name: 
// Module Name: Tri_State_Mux_TB
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


module Tri_State_Mux_TB;
reg a,b,sel;
wire y;
Tri_State_Mux uut(sel,a,b);
initial begin
sel=0;a=0;b=0;
#10
sel=0;a=1;b=0;
#10
sel=1;a=0;b=0;
#10
sel=1;a=0;b=1;
#10
$finish();
end
endmodule
