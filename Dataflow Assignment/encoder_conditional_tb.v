`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:35:11
// Design Name: 
// Module Name: encoder_conditional_tb
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


module encoder_conditional_tb;
reg [3:0] din;
wire [1:0] dout;
encoder_conditional uut(din,dout);
initial begin
$monitor(" din=%b -> dout=%b", din, dout);
din = 4'b0001; #5;
din = 4'b0010; #5;
din = 4'b0100; #5;
din = 4'b1000; #5;
$finish();
end
endmodule
