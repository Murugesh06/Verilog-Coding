`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:15:23
// Design Name: 
// Module Name: fourone_mux_conditional
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


module fourone_mux_conditional(input [1:0]sel,a,b,c,d,output y);
assign y=(sel==2'b00)?a:(sel==2'b01)?b:(sel==2'b10)?c:d;
endmodule
