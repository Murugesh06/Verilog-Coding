`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 09:30:51
// Design Name: 
// Module Name: function_add
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


module function_add;
reg [7:0]a,b;
reg [8:0]sum;
function [8:0] add_8bit;
input [7:0]x,y;
begin
add_8bit=x+y;
end
endfunction
assign result=add_8bit(a,b);
initial begin
    a = 8'd100;
    b = 8'd55;
    #1; 
    $display("a = %d, b = %d, sum = %d", a, b, result);
  end
endmodule
