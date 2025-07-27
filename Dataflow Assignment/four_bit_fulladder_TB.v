`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 19:48:33
// Design Name: 
// Module Name: four_bit_fulladder_TB
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


module four_bit_fulladder_TB;
reg  [3:0] a, b;
reg  c_in;
wire [3:0] sum;
wire c_out;
four_bit_fulladder uut(a,b,c_in,sum,c_out);
initial begin
$monitor("a=%b, b=%b, c_in=%b | sum=%b, c_out=%b", a, b, c_in, sum, c_out);

        a = 4'b0001; b = 4'b0010; c_in = 0;
        #10 
        a = 4'b1111; b = 4'b0001; c_in = 1;
        #10 
        a = 4'b0101; b = 4'b0110; c_in = 0;
        #10 
        $finish;
    end
endmodule
