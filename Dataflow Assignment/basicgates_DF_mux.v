`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 14:09:29
// Design Name: 
// Module Name: basicgates_DF_mux
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


module basicgates_DF_mux(input a,b,output out_and,out_or,out_nand,out_nor,out_xor,out_xnor);
assign out_and=b?a:1'b0;
assign out_or=b?1'b1:a;
assign out_nand=b?(~a):1'b1;
assign out_nor=b?1'b1:~a;
assign out_xor=b?~a:a;
assign out_xnor=b?a:~a;
endmodule
