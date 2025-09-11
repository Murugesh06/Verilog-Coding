`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 12:07:02
// Design Name: 
// Module Name: function_evenparity_tb
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


module function_evenparity_tb;
reg [7:0]test_data;
wire parity;
function_evenparity uut();
initial begin
    test_data = 8'b10101000;  
    $display("Data = %b, Even Parity = %b", test_data, uut.parity_even(test_data));

    test_data = 8'b11110000;  
    $display("Data = %b, Even Parity = %b", test_data, uut.parity_even(test_data));
    $finish();
    end
endmodule
