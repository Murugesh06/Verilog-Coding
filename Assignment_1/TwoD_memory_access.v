`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:26:09
// Design Name: 
// Module Name: TwoD_memory_access
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


module TwoD_memory_access;
reg [7:0] mem[3:0][3:0];
integer i,j;
initial begin
for(i=0;i<4;i=i+1) begin  
for(j=0;j<4;j=j+1) begin
mem[i][j]=i*4+j;
end
end
$display("memory content:");
for(i=0;i<4;i=i+1) begin  
for(j=0;j<4;j=j+1) begin
$write("%0d ",mem[i][j]);
end
$write("\n");
end
$display("\nSpecific Access:");
$display("mem[3][2]=%0d",mem[3][2]);
$finish();
end
endmodule
