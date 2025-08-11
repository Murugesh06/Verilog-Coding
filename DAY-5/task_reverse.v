`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 11:22:17
// Design Name: 
// Module Name: task_reverse
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


module task_reverse;
reg [7:0]data_in;
reg [7:0]reversed_out;
task reverse_bits;
input [7:0]in;
output [7:0]out;
integer i;
begin
for(i=0;i<8;i=i+1)begin
out[i]=in[7-i];
end
end
endtask

initial begin
    data_in = 8'b11010010;  // Example input
    reverse_bits(data_in, reversed_out);
    $display("Input     = %b", data_in);
    $display("Reversed  = %b", reversed_out);
    #10 
    $finish;
  end
endmodule
