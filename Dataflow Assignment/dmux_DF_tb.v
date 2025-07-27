`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.07.2025 14:55:36
// Design Name: 
// Module Name: dmux_DF_tb
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


module dmux_DF_tb;
reg  din;
reg  [1:0]sel;
reg   en;
wire [3:0]dout;
dmux_DF uut(din,sel,en,dout);
initial begin
$monitor("en=%b sel=%b din=%b => dout=%b",en, sel, din, dout);
en  = 1; din = 1;
sel = 2'b00; #5;
sel = 2'b01; #5;
sel = 2'b10; #5;
sel = 2'b11; #5; 

en=0;din=1;sel=2'b00;#5;

$finish();
end
endmodule
