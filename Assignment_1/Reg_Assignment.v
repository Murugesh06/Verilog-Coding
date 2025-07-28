`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 16:43:23
// Design Name: 
// Module Name: Reg_Assignment
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


module Reg_Assignment;
reg [7:0]data;
   initial begin
    $display("Time |      data (binary)     | data (decimal)");
    $monitor("%0t  | %b | %0d ",$time,data,data);
        data = 8'b10101010;   // 170 
        #10;
        data = 8'b11001100;   // 204 
        #10;
        data = 8'b11110000;   // 240
        #10;
        data = 8'b00001111;   // 15 
        #10;
        $finish;
    end
endmodule
