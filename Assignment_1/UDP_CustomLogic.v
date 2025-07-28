`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:42:13
// Design Name: 
// Module Name: UDP_CustomLogic
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


primitive UDP_CustomLogic(output f,input x,y,z);
table
       0 0 0 : 0;
       0 0 1 : 0;
       0 1 0 : 1;
       0 1 1 : 0;
       1 0 0 : 1;
       1 0 1 : 1;
       1 1 0 : 1;
       1 1 1 : 1;
 endtable
endprimitive
