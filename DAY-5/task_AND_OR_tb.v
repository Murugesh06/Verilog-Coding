`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 18:41:40
// Design Name: 
// Module Name: task_AND_OR_tb
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


module task_AND_OR_tb;
reg a,b;
reg and_out,or_out;
//task_AND_OR uut(a,b,and_out,or_out);
task and_or_task(input a,b,output and_result,or_result);
begin
and_result=a&b;
or_result=a|b;
end
endtask
initial begin
    a = 1'b0; b = 1'b1;
    and_or_task(a, b, and_out, or_out);
    $display("a=%b b=%b | AND=%b OR=%b", a, b, and_out, or_out);
    #10;
    a = 1'b1; b = 1'b1;
    and_or_task(a, b, and_out, or_out);
    $display("a=%b b=%b | AND=%b OR=%b", a, b, and_out, or_out);
    #10;
    $finish();
    end
endmodule
