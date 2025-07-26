`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 14:50:16
// Design Name: 
// Module Name: RippleCarryAdder_Structural
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


module RippleCarryAdder_Structural(input [3:0]a,b,input cin,output [3:0]sum,output cout);
wire c1,c2,c3;
FA(a[0],b[0],cin,sum[0],c1);
FA(a[1],b[1],c1,sum[1],c2);
FA(a[2],b[2],c2,sum[2],c3);
FA(a[3],b[3],c3,sum[3],cout);
endmodule
