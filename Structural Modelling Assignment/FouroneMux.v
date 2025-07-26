`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:48:19
// Design Name: 
// Module Name: FouroneMux
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


module FouroneMux(input d0,d1,d2,d3,s0,s1,output y);
wire n0,n1,n2,n3,s0_bar,s1_bar;
not(s0_bar,s0);
not(s1_bar,s1);
and(n0,d0,s1_bar,s0_bar);
and(n1,d1,s1_bar,s0);
and(n2,d2,s1,s0_bar);
and(n3,s1,s0);
or(y,n0,n1,n2,n3);
endmodule
