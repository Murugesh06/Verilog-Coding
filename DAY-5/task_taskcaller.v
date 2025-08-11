`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 11:48:33
// Design Name: 
// Module Name: task_taskcaller
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


module task_taskcaller;
reg [7:0]a,b;
reg [7:0]result;

task add_task;
input [7:0]a,b;
output [7:0]sum;
begin
sum=a+b;
end
endtask

task double_add_task;
input [7:0]x,y;
output [7:0]result;
reg [7:0]temp1,temp2;
begin
add_task(x,y,temp1);
add_task(temp1,y,temp2);
result=temp2;
end
endtask

initial begin
    a = 8'd5;
    b = 8'd10;
    double_add_task(a, b, result);
    $display("a = %0d, b = %0d => final result = %0d", a, b, result);  
    #10 
    $finish;
  end
endmodule
