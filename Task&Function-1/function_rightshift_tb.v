`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 20:05:08
// Design Name: 
// Module Name: function_rightshift_tb
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


module function_rightshift_tb;
reg [7:0]data;
function_rightshift uut();
initial begin
data=8'b10110011;
$display("data=%b shifted output=%b",data,uut.rshift(data));
$finish();
end
endmodule
