`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 16:58:39
// Design Name: 
// Module Name: EncoderTB
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


module EncoderTB;
reg d3,d2,d1,d0;
wire a1,a0;
Encoder uut(d3,d2,d1,d0,a1,a0);
initial begin
d0=0;d1=0;d2=1;d3=1;
#10
d0=0;d1=1;d2=0;d3=1;
#10
$finish();
end
endmodule
