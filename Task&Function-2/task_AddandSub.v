`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:24:52
// Design Name: 
// Module Name: task_AddandSub
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


module task_AddandSub;
reg [7:0]a,b;
reg [7:0]sum,diff;
task add_sub;
    input  [7:0] a, b;
    output [7:0] sum, diff;
    begin
      sum  = a + b;
      diff = a - b;
    end
endtask
initial begin
    a = 8'd20;
    b = 8'd5;
    add_sub(a, b, sum, diff);
    $display("a=%d, b=%d => Sum=%d, Diff=%d", a, b, sum, diff);

    
    a = 8'd100;
    b = 8'd50;
    add_sub(a, b, sum, diff);
    $display("a=%d, b=%d => Sum=%d, Diff=%d", a, b, sum, diff);
$finish();
end    
endmodule
