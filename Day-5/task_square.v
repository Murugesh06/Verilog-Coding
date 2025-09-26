`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:02:50
// Design Name: 
// Module Name: task_square
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


module task_square;
reg [7:0]n;
reg[15:0]out;
task square;
input [7:0]n;
output [7:0]out;
begin
out=n*n;
end
endtask
initial begin
    n = 8'd10;
    square(n, out);
    $display("Input = %d, Square = %d", n, out);

   
    n = 8'd255;
    square(n, out);
    $display("Input = %d, Square = %d", n, out);  // 255^2 = 65025

    #10 $finish;
    end
endmodule
