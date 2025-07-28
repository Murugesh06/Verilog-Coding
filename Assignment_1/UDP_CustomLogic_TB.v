`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:52:12
// Design Name: 
// Module Name: UDP_CustomLogic_TB
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


module UDP_CustomLogic_TB;
reg x,y,z;
wire f;
UDP_CustomLogic uut(f,x,y,z);
initial begin
x=0;y=0;z=0;#10;
x=0;y=0;z=1;#10;
x=0;y=1;z=0;#10;
x=0;y=1;z=1;#10;
x=1;y=0;z=0;#10;
x=1;y=0;z=1;#10;
x=1;y=1;z=0;#10;
x=1;y=1;z=1;#10;
$finish();
end
endmodule
