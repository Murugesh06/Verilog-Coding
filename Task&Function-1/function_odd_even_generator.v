`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 21:32:40
// Design Name: 
// Module Name: function_odd_even_generator
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


module function_odd_even_generator;
function gen;
input is_even;
//input count;
integer i;
begin
if(is_even)
//for(i=0;i<count;i=i+1)begin
gen=2*i;
//$display("%d ",gen);
//end
else
//for(i=0;i<count;i=i+1)begin
gen=2*i+1;
//$display("%d ",gen);
//end
end
endfunction
endmodule
