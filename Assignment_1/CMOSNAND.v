`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 20:12:36
// Design Name: 
// Module Name: CMOS_NAND
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


module CMOS_NAND(input x,y,output f );
supply1 vdd; 
supply0 gnd; 
wire a; 
pmos p1 (f, vdd, x); 
pmos p2 (f, vdd, y); 
nmos n1 (f, a, x); 
nmos n2 (a, gnd, y);
endmodule
