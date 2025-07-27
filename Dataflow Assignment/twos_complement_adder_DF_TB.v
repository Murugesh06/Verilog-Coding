`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 20:15:35
// Design Name: 
// Module Name: twos_complement_adder_DF_TB
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


module twos_complement_adder_DF_TB;
reg  [3:0] x, y;
reg   c_in;
wire [3:0] sum;
wire  c_out;
twos_complement_adder_DF uut(x,y,c_in,sum,c_out);
initial begin
$monitor(" x=%b, y=%b, c_in=%b | sum=%b, c_out=%b", x, y, c_in, sum, c_out);

        
 x = 4'b0101; y = 4'b0011; c_in = 0;  // 5 + 3 = 8
 #10;

    
 x = 4'b0101; y = 4'b0011; c_in = 1;  // 5 - 3 = 2
 #10;

 // 3 - 5 = -2
  x = 4'b0011; y = 4'b0101; c_in = 1;
  #10;

  $finish;
  end
endmodule
