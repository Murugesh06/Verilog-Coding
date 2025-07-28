`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 15:55:02
// Design Name: 
// Module Name: Wire_Reg_TB
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


module Wire_Reg_TB;
reg a, b;
wire y_wire;
wire y_reg;
Wire uut1(a,b,y_wire);
Reg uut2(a,b,y_reg);
initial begin
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
$finish();
end
endmodule
