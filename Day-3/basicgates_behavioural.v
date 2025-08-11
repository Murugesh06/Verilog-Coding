`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 12:19:34
// Design Name: 
// Module Name: basicgates_behavioural
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


module basicgates_behavioural(input a,b,output reg and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
always @(a or b)begin
and_out  = a & b;
or_out   = a | b;
not_out  = ~a;      
nand_out = ~(a & b);
nor_out  = ~(a | b);
xor_out  = a ^ b;
xnor_out = a ~^ b;
end
endmodule
