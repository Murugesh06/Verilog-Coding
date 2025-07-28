`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 20:59:29
// Design Name: 
// Module Name: Manipulate_Vector_Using_Part_Select
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


module Manipulate_Vector_Using_Part_Select;
reg [7:0]bus;
reg [7:0]busA;
integer i;
initial begin
bus=8'b11010101;
for(i=0;i<8;i=i+1)begin
  busA[i]=bus[i];
end
$display("busA = %b", busA);
busA[3:0]=bus[3:0];
$display("busA = %b", busA);
busA[3:0]=4'b0011;
$display("busA = %b", busA);
$finish();
end
endmodule
