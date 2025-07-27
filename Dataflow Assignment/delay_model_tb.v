`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 15:23:48
// Design Name: 
// Module Name: delay_model_tb
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


module delay_model_tb;
//transport delay
reg a;
wire y;
delay_model uut(a,y);
initial begin
$monitor("Time=%0t | a=%b | y=%b", $time, a, y);
a = 0; #3;
a = 1; #2;  
a = 0; #10;
$finish();
end
endmodule
