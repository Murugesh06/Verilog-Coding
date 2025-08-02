`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 11:54:04
// Design Name: 
// Module Name: rtl_snippet_tb
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


module rtl_snippet_tb;
reg clk,x1,x2,x3;
wire f,g;
rtl_snippet uut(clk,x1,x2,x3,f,g);
initial begin
$monitor("clk=%b  | x1=%b | x2=%b | x3=%b | f=%b | g=%b",clk,x1,x2,x3,f,g);
clk=0;x1=0;x2=1;x3=0;#10;
clk=1;x1=0;x2=1;x3=0;#10;
clk=1;x1=1;x2=1;x3=1;#10;
$finish();
end
endmodule
