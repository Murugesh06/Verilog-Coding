`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 12:16:51
// Design Name: 
// Module Name: EightoneMux_TB
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


module EightoneMux_TB;
reg [7:0]d;
reg [2:0]sel;
wire y;
EightoneMux uut(d,sel,y);
initial begin
d = 8'b10101010;
sel = 3'b000; #10;  // should select d[0] = 0
sel = 3'b001; #10;  // should select d[1] = 1
sel = 3'b010; #10;  
sel = 3'b011; #10; 
$finish();
end 
endmodule
