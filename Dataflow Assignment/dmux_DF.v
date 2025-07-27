`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:51:20
// Design Name: 
// Module Name: dmux_DF
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


module dmux_DF(input din,[1:0]sel,en,output [3:0]dout);
assign dout[0]=(en&&(sel==2'b00))?din:1'b0;
assign dout[1]=(en&&(sel==2'b01))?din:1'b0;
assign dout[2]=(en&&(sel==2'b10))?din:1'b0;
assign dout[3]=(en&&(sel==2'b11))?din:1'b0;
endmodule
