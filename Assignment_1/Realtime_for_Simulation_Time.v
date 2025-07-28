`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 20:29:43
// Design Name: 
// Module Name: Realtime_for_Simulation_Time
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


module Realtime_for_Simulation_Time;
realtime ctime;
initial begin
ctime=$realtime;
$display("current time=%f",ctime);
#10
ctime=$realtime;
$display("current time=%f",ctime);
#10
ctime=$realtime;
$display("current time=%f",ctime);
#10
$finish();
end
endmodule
