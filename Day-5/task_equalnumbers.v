`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 18:33:59
// Design Name: 
// Module Name: task_equalnumbers
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


module task_equalnumbers;
task check_equal;
    input [7:0] a, b;
    output reg equal_flag;
    begin
      if (a == b)
        equal_flag = 1;
      else
        equal_flag = 0;
      $display("A = %b, B = %b | Equal = %b", a, b, equal_flag);
    end
  endtask

  reg [7:0] input1, input2;
  reg result_flag;

  initial begin
    input1 = 8'b10101010; input2 = 8'b10101010;
    check_equal(input1, input2, result_flag);

    input1 = 8'b11001100; input2 = 8'b00110011;
    check_equal(input1, input2, result_flag);

    $finish;
  end

endmodule
