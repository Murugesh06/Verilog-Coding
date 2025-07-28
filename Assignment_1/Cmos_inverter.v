`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:08:46
// Design Name: 
// Module Name: Cmos_inverter
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


module Cmos_inverter(input in,output out);

supply0 gnd;
supply1 vdd;
pmos(out,vdd,in);
nmos(out,gnd,in);
endmodule
