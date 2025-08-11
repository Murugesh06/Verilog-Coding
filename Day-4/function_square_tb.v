`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 11:31:29
// Design Name: 
// Module Name: function_square
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


module function_square_tb;
reg [7:0]val;
wire [15:0]result;
function_square uut();
initial begin
    for (val = 0; val < 10; val = val + 1) begin
      $display("Value = %0d, Square = %0d", val, uut.square(val));
    end
    $finish;
  end
endmodule
