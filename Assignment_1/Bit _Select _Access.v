`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 20:38:24
// Design Name: 
// Module Name: Bit _Select _Access
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


module Bit_Select_Access;
reg [7:0]data;
reg bit_value;
initial begin
data=8'b10101100;
bit_value=data[3];
$display("data=%b",data);
$display("bit_value=%b",bit_value);
$finish();
end
endmodule
