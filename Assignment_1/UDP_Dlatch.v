`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:59:24
// Design Name: 
// Module Name: UDP_Dlatch
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


primitive UDP_Dlatch(q,en,d);
input en,d;
output q;
reg q;
table
0 ? : ? : -;
1 0 : ? : 0;
1 1 : ? : 1;
endtable 
endprimitive
