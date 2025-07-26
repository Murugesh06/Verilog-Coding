`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 11:17:43
// Design Name: 
// Module Name: FA_using_HA_TB
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


module FA_using_HA_TB;
reg a,b,cin;
wire sum,carry;
FA_using_HA uut(a,b,cin,sum,carry);
initial begin
a=0;b=0;cin=0;
#10
a=0;b=0;cin=1;
#10
a=0;b=1;cin=0;
#10
a=0;b=1;cin=1;
#10
a=1;b=0;cin=0;
#10
$finish();
end
endmodule
