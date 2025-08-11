`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:42:45
// Design Name: 
// Module Name: function_difference
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


module function_difference;
  reg [7:0] a, b;
  wire [8:0] result; 

  
  function [8:0] sub_8bit;
    input [7:0] x, y;
    begin
      sub_8bit = x - y; 
    end
  endfunction

 
  assign result = sub_8bit(a, b);

 
  initial begin
    a = 8'd100;
    b = 8'd55;
    #1; 
    $display("a = %d, b = %d, diff = %d", a, b, result);
  end

endmodule

