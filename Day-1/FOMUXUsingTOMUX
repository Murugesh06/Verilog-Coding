`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:29:11
// Design Name: 
// Module Name: FOMUX_Using_TOMUX
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


module FOMUX_Using_TOMUX(input a,b,c,d,s1,s0,output out);
wire s1_bar,s0_bar,w1,w2,w3,w4,w5,w6,w7,w8;
and(w1,s1_bar,a);
and(w2,s1,b);
and(w3,s1_bar,c);
and(w4,s1,d);
or(w5,w1,w2);
or(w6,w3,w4);
and(w7,w5,s0_bar);
and(w8,w5,s0);
or(out,w7,w8);
endmodule
