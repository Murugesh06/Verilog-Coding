`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 21:03:44
// Design Name: 
// Module Name: task_calls_taskandfn
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


module task_calls_taskandfn;
reg [7:0] a, b;
reg [7:0] sum, doubled;

function [7:0] double_value;
    input [7:0] in;
    begin
      double_value = in * 2;
    end
  endfunction

  
  task add_task;
    input [7:0] x, y;
    output [7:0] result;
    begin
      result = x + y;
    end
  endtask

  task main_task;
    input [7:0] x, y;
    output [7:0] sum_out, double_out;
    begin
      add_task(x, y, sum_out);
      double_out = double_value(x);
    end
  endtask

  initial begin
    a = 8'd5;
    b = 8'd10;

    main_task(a, b, sum, doubled);

    $display("a = %d, b = %d", a, b);
    $display("Sum (from add_task) = %d", sum);
    $display("Double of a (from function) = %d", doubled);
  end
endmodule
