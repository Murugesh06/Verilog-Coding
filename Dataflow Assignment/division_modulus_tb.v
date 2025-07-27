`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 10:18:21
// Design Name: 
// Module Name: division_modulus_tb
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


module division_modulus_tb;
reg [7:0]a,b;
wire [7:0]x,y;
division_modulus uut(a,b,x,y);
initial begin
$monitor("a/b=%0d  a%b=%0d",x,y);
a=10;b=5;#10;
a=-10;b=5;#10;
$finish();
end
endmodule
