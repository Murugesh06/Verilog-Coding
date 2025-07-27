`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 12:26:46
// Design Name: 
// Module Name: comparator_df_tb
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


module comparator_df_tb;
reg  [3:0] a, b;
wire ceq, clt, cgt;
comparator_df uut(a,b,ceq,clt,cgt);
initial begin
$monitor("a = %b, b = %b | ceq = %b, clt = %b, cgt = %b",a, b, ceq, clt, cgt);
a = 4'b0101; b = 4'b0101; #10; // Equal
a = 4'b0011; b = 4'b1000; #10; // Less than
a = 4'b1110; b = 4'b0001; #10; // Greater than
$finish();
end
endmodule
