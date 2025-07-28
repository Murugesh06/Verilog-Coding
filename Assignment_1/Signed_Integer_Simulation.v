`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 17:01:28
// Design Name: 
// Module Name: Signed_Integer_Simulation
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


module Signed_Integer_Simulation;
integer i;
initial begin
$display("Time   |    i(decimal)    |   i(binary)");
$monitor("%0t   | %0d                          | %b", $time, i, i);
i=25;
#10
i=-25;
#10
i = 2147483647; // 2^31 - 1
#10
i = -2147483647; // -2^31 - 1
#10
i=0;
#10
$finish();
end
endmodule
