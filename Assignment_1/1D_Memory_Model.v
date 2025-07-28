`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 09:10:23
// Design Name: 
// Module Name: 1D_Memory_Model
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


module OneD_Memory_Model;
reg[7:0] mem[7:0];
integer i;
initial begin
 mem[0] = 8'hA5;   // 10100101
 mem[1] = 8'h5A;   // 01011010
 mem[2] = 8'hFF;   // 11111111
 mem[3] = 8'h00;   // 00000000
 mem[4] = 8'h3C;   // 00111100
 mem[5] = 8'hC3;   // 11000011
 mem[6] = 8'h12;   // 00010010
 mem[7] = 8'h21;   // 00100001
 $display("memory read:");
 for( i=0;i<8;i=i+1)begin
    $display("%b",mem[i]);
   end
  $finish();
  end
endmodule
