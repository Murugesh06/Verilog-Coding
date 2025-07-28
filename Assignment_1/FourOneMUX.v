`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 15:44:03
// Design Name: 
// Module Name: Four_One_MUX
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


module Four_One_MUX(out, a, b, c, d, s0, s1 );
output out;
input a,b,c,d,s0,s1;
wire s0bar,s1bar,t1,t2,t3,t4;
not(s0bar,s0);
not(s1bar,s1);
and(t1,s0bar,s1bar,a);
and(t2,s1bar,s0,b);
and(t3,s1,s0bar,c);
and(t4,s1,s0,d);
or(out,t1,t2,t3,t4);
endmodule
