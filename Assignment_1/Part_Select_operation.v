`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 20:51:38
// Design Name: 
// Module Name: Part_Select_operation
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


module Part_Select_operation;
reg [7:0] bus;
reg [3:0] lower_nibble;
initial begin
bus=8'b11011001; 
lower_nibble=bus[3:0];
$display("Bus value=%b",bus);
$display("lower nibble value=%b",lower_nibble);
$finish();
end
endmodule
