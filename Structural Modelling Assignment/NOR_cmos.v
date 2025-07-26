`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 16:09:18
// Design Name: 
// Module Name: NOR_cmos
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


module NOR_cmos(input a,b,output y);
wire w;
supply1 vdd;
supply0 gnd;
pmos(w,a,vdd);
pmos(y,b,w);
nmos(y,a,gnd);
nmos(y,b,gnd);
endmodule
