`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:53:56
// Design Name: 
// Module Name: TwoOneMux
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


module TwoOneMux(input a,b,sel,output y);
wire w1,w2,nsel;
not(nsel,sel);
and(w1,a,nsel);
and(w2,b,sel);
or(y,w1,w2);
endmodule
