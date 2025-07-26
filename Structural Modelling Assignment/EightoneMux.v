`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:47:10
// Design Name: 
// Module Name: EightoneMux
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


module EightoneMux(input [7:0] d,
    input [2:0] sel,
    output y);
wire y0, y1;
FouroneMux(d[0],d[1],d[2],d[3],sel[0],sel[1],y0);
FouroneMux(d[4],d[5],d[6],d[7],sel[0],sel[1],y1);
TwoOneMux(y0,y1,sel[2],y); 
endmodule
