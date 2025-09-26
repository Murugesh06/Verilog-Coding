`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 20:17:14
// Design Name: 
// Module Name: task_factorial
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


module task_factorial;
integer number,factorial;
task compute_factorial;
input integer number;
output integer factorial;
integer i;
begin
factorial =1;
for(i=2;i<=number;i=i+1)begin
factorial =factorial*i;
end
end
endtask
initial begin
number=5;
compute_factorial(number,factorial);
$display("Factorial of %0d is %0d", number, factorial);
#10;
$finish();
end
endmodule
