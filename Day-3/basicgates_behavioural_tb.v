`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 12:26:18
// Design Name: 
// Module Name: basicgates_behavioural_tb
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


module basicgates_behavioural_tb;
reg a,b;
wire and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;
basicgates_behavioural uut(a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
initial begin
$display("A B | AND OR NOT NAND NOR XOR XNOR");
$monitor("%b %b |  %b   %b   %b    %b    %b   %b    %b", 
              a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish();
end
endmodule
