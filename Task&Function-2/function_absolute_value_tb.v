`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 13:07:53
// Design Name: 
// Module Name: function_absolute_value_tb
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


module function_absolute_value_tb;
reg signed[7:0]in;
wire [7:0]abs_output;
function_absolute_value uut();
initial begin
    in = 8'd25;
    $display("Input = %0d => Abs = %0d", in, uut.abs_val(in));

    in = -8'd40;
    $display("Input = %0d => Abs = %0d", in, uut.abs_val(in));
    $finish();
    end
endmodule
