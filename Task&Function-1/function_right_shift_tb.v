`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 21:19:05
// Design Name: 
// Module Name: function_right_shift_tb
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


module function_right_shift_tb;
reg [7:0]data;
reg [7:0]amt;
function_right_shift uut();
initial begin
data=8'b10110110;amt=8'd0;
$display("data=%b amt=%d shifted data=%b",data,amt,uut.rshift(data,amt));
data=8'b10110110;amt=8'd2;
$display("data=%b amt=%d shifted data=%b",data,amt,uut.rshift(data,amt));
$finish();
end
endmodule
