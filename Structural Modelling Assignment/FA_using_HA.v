`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:13:55
// Design Name: 
// Module Name: FA_using_HA
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


module FA_using_HA(input a,b,cin,output sum,carry);
wire w1,w2,w3;
xor(w1,a,b);
xor(sum,w1,cin);  //sum output
and(w2,a,b);
and(w3,w1,cin);
or(carry,w2,w3);  //carry output
endmodule
