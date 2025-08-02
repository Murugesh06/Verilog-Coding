`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 11:50:13
// Design Name: 
// Module Name: rtl_snippet
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


module rtl_snippet(input clk,x1,x2,x3,output reg f,g);
reg temp;
always @(posedge clk) begin
temp<=x1&x2;
f<=temp;
g<=x3|f;
end
endmodule
