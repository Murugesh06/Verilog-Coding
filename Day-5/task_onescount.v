`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 17:50:33
// Design Name: 
// Module Name: task_onescount
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


module task_onescount;
reg [7:0] input_data;
reg [3:0] count;
task onescounter;
input [7:0] in;
output [3:0] ctr;
integer i;
begin
ctr=0;
for(i=0;i<8;i=i+1)begin
if(in[i]==1)
ctr=ctr+1;
end
$display("Input = %b | Number of 1s = %0d",in,ctr);
end
endtask
initial begin
input_data=8'b11001100;
onescounter(input_data,count);
input_data=8'b01000110;
onescounter(input_data,count);
end
endmodule
