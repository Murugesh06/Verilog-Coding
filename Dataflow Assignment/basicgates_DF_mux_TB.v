`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 14:21:32
// Design Name: 
// Module Name: basicgates_DF_mux_TB
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


module basicgates_DF_mux_TB;
reg a,b;
wire out_and,out_or,out_nand,out_nor,out_xor,out_xnor;
basicgates_DF_mux uut(a,b,out_and,out_or,out_nand,out_nor,out_xor,out_xnor);
initial begin
 $monitor("%b %b |  %b   %b   %b    %b    %b    %b", a, b,out_and,out_or,out_nand,out_nor,out_xor,out_xnor);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish();
end
endmodule
