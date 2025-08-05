`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 10:24:17
// Design Name: 
// Module Name: function_odd_even_generator_tb
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


module function_odd_even_generator_tb;
reg count;
reg is_even;
reg value;
integer i;
function_odd_even_generator uut();
initial begin
is_even=1;count=20;
for(i=0;i<count;i=i+1)begin
value=uut.gen(is_even);
$display("%d ",value);
end
is_even=0;count=20;
for(i=0;i<count;i=i+1)begin
value=uut.gen(is_even);
$display("%d ",value);
end
$finish();
end
endmodule
