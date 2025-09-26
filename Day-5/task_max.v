`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 12:12:36
// Design Name: 
// Module Name: task_max
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


module task_max;
reg  [7:0] a, b, c, d;
reg  [7:0] max_reg;

task max_of_four;
    input  [7:0] a, b, c, d;
    output [7:0] max;
    begin
      max = a;
      if (b > max) max = b;
      if (c > max) max = c;
      if (d > max) max = d;
    end
 endtask
 
 initial begin
    a = 8'd23; b = 8'd45; c = 8'd12; d = 8'd37;
    max_of_four(a, b, c, d, max_reg);
    $display("Inputs: a=%0d, b=%0d, c=%0d, d=%0d => Max = %0d", a, b, c, d, max_reg);
    #10 
    $finish;
  end
  
endmodule
