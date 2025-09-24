`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 17:53:55
// Design Name: 
// Module Name: task_addition_tb
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


module task_addition_tb;
reg [7:0]a,b;
reg [8:0]out;
task_adder uut(a,b,out);
task add8;
    input [7:0] in1, in2;
    output [8:0] res;
    begin
      res = in1 + in2;
    end
  endtask
  initial begin
  a=8'd150;
  b=8'd100;
  add8(a,b,out);
  $display("a = %d, b = %d, sum = %d", a, b, out);
  #10;
  $finish();
  end
endmodule
