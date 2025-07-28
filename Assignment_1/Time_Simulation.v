`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:35:30
// Design Name: 
// Module Name: Time_Simulation
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


module Time_Simulation;
time t;
initial begin
t=$time;
$display("Event 1 -time=%0d",t);
#10
t=$time;
$display("Event 2 -time=%0d",t);
#10
$finish();
end
endmodule
