`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 14:39:16
// Design Name: 
// Module Name: 4to1mux_DF_continous_assign
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


module mux4to1_DF_continous_assign(input s1,s0,i0,i1,i2,i3,output y);
assign y=s1?(s0?i3:i2):(s0?i1:i0);
endmodule
