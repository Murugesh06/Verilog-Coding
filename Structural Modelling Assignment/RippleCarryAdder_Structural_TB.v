`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 15:01:08
// Design Name: 
// Module Name: RippleCarryAdder_Structural_TB
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


module RippleCarryAdder_Structural_TB;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
RippleCarryAdder_Structural uut(a,b,cin,sum,cout);
initial begin
 a = 4'b0000; b = 4'b0000; cin = 0; #10;
 a = 4'b0001; b = 4'b0010; cin = 0; #10;
 a = 4'b0101; b = 4'b0011; cin = 1; #10;
 $finish();
 end
endmodule
