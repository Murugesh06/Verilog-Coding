`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 11:21:44
// Design Name: 
// Module Name: UDP_Tlatch
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


primitive UDP_Tlatch(q,t,en);
input t,en;
output q;
reg q;
table
      0   (01)   : ? : - ;      // No change on posedge if T=0
      1   (01)   : 0 : 1 ;      // Toggle from 0 to 1 on posedge
      1   (01)   : 1 : 0 ;      // Toggle from 1 to 0 on posedge
      ?     ?    : ? : - ;
endtable
endprimitive
