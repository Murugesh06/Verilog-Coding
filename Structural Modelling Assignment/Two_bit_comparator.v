`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 10:05:19
// Design Name: 
// Module Name: Two_bit_comparator
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


module Two_bit_comparator(input a0,b0,a1,b1,output out,out1,out2);
wire a0_bar,a1_bar,w1,w2,w3,w4,w5,w6,w7,w8,w9;
not(a0_bar,a0);
not(a1,a1_bar);
and(w1,a1_bar,b1);
and(w2,a1_bar,b1);
and(w3,a0_bar,b0);
and(w4,a0_bar,bo);
or(w5,w1,w2);
not(w6,w5);
and(w7,w6,w3);
and(w8,w6,w4);
or(out1,w1,w7);
or(out2,w8,w2);
or(w9,out1,out2);
not(out,w9);
endmodule
