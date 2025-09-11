`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 11:49:38
// Design Name: 
// Module Name: function_minvalue_tb
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


module function_minvalue_tb;
reg [7:0]x,y;
wire [7:0]min_result;
function_minvalue uut();
initial begin
 x = 8'd23; y = 8'd45;
 $display("x = %0d, y = %0d, min = %0d", x, y, uut.min_val(x, y));

 x = 8'd100; y = 8'd55;
 $display("x = %0d, y = %0d, min = %0d", x, y, uut.min_val(x, y));
 $finish();
 end
endmodule
