`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 14:21:52
// Design Name: 
// Module Name: task_leftshift
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


module task_leftshift;
reg [7:0]data;
reg [7:0] shifted;
task left_circular_shift;
input [7:0]in;
output [7:0]out;
begin
 out = {in[6:0], in[7]}; 
 end
 endtask
initial begin
    data = 8'b10110011;
    $display("Original  = %b", data);

    left_circular_shift(data, shifted);
    $display("Shifted   = %b", shifted);
  end 
endmodule
