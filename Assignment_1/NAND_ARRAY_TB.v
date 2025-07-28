`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 14:05:11
// Design Name: 
// Module Name: NAND_ARRAY_TB
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


module NAND_ARRAY_TB;
reg [3:0]a,b;
wire [3:0]y;
Instantiate_ArrayOfGates uut(a,b,y);
initial begin
a=1110;b=0111;#10;
a=1001;b=1;#0010;
//a=1;b=0;#10;
//a=1;b=1;#10;
$finish();
end
endmodule
