`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 14:36:26
// Design Name: 
// Module Name: task_average
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


module task_average;
parameter n=8;
reg [7:0] data_array[0:n-1];
integer i;
real average;
task calculate_average;
input [7:0] array_in[0:n-1];
output real avg;
integer j;
integer sum;
begin 
sum=0;
for(j=0;j<n;j=j+1)begin
sum=sum+array_in[j];
end
avg=sum/n;
end
endtask
initial begin
    
    data_array[0] = 10;
    data_array[1] = 20;
    data_array[2] = 30;
    data_array[3] = 40;
    data_array[4] = 50;
    data_array[5] = 60;
    data_array[6] = 70;
    data_array[7] = 80;

   
    calculate_average(data_array,average);

    
    $display("Average = %0f", average);
  end
endmodule
