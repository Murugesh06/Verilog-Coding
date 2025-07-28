`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:50:09
// Design Name: 
// Module Name: FloatingPoint_Handling
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


module FloatingPoint_Handling;
real delta;
integer i;
initial begin
delta=4e10;
i=delta;
$display("given value=%e  stored value=%0d",delta,i);
#10
delta=2.18;
i=delta;
$display("given value=%f  stored value=%0d",delta,i);
#10
delta=-1234.5678;
i=delta;
$display("given value=%f  stored value=%0d",delta,i);
#10
$finish();
end
endmodule
