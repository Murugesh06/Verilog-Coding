`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 12:45:06
// Design Name: 
// Module Name: qn_onethree_tb
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


module qn_onethree_tb;
reg [3:0]a,b;
wire out1,out2;
qn_onethree uut(a,b,out1,out2);
initial begin
$monitor("a==b =%b, a===b =%b",out1,out2);
a=4'b0001;b=4'b00x1;#10;
a=4'b11x1;b=4'b11x1;#10;
$finish();
end
endmodule
