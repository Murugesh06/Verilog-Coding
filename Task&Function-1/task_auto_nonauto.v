`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 20:36:55
// Design Name: 
// Module Name: task_auto_nonauto
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


module task_auto_nonauto;
reg [15:0] result_auto;
  reg [15:0] result_nonauto;

 
  task automatic factorial_auto;
    input integer n;
    output integer res;
    begin
      if (n <= 1)
        res = 1;
      else begin
        integer temp;
        factorial_auto(n-1, temp);
        res = n * temp;
      end
    end
  endtask

  
  task factorial_nonauto;
    input integer n;
    output integer res;
    integer temp;  // shared across calls
    begin
      if (n <= 1)
        res = 1;
      else begin
        factorial_nonauto(n-1, temp);
        res = n * temp;
      end
    end
  endtask

 
  initial begin
    factorial_auto(5, result_auto);
    $display("Automatic Task Factorial(5) = %0d", result_auto);

    factorial_nonauto(5, result_nonauto);
    $display("Non-Automatic Task Factorial(5) = %0d", result_nonauto);
  end
endmodule
