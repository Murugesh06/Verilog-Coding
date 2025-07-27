`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 12:23:05
// Design Name: 
// Module Name: comparator_df
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


module comparator_df(input [3:0]a,[3:0]b,output ceq,clt,cgt);
assign ceq=(a==b);
assign clt=(a<b);
assign cgt=(a>b);
endmodule
