`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 16:01:48
// Design Name: 
// Module Name: task_addition
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


module task_addition;
reg [7:0]a,b;
reg [7:0]result;
task add_task;
input [7:0]in1,in2;
output [7:0]out;
begin
out=in1+in2;
end
endtask
initial begin
    a = 8'd10;
    b = 8'd20;
    add_task(a, b, result);
    $display("a = %0d, b = %0d, Sum = %0d", a, b, result);

    a = 8'd50;
    b = 8'd70;
    add_task(a, b, result);
    $display("a = %0d, b = %0d, Sum = %0d", a, b, result);
  end
endmodule
