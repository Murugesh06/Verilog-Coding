`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 15:53:46
// Design Name: 
// Module Name: NAND_SwitchLevel
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


module NAND_SwitchLevel(input a,b,output out);
wire w1,w2;
supply1 vdd;
supply0 gnd;
pmos(w1,a,vdd);
pmos(w2,b,gnd);
pmos(w1,a,w2);
assign out=w1;
endmodule
