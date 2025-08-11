`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 09:53:42
// Design Name: 
// Module Name: function_xor]
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


module function_xor;
reg [7:0]data;
wire parity;
function xor_all_bits;
input [7:0]in;
integer i;
begin
xor_all_bits = in[0];
for(i=1;i<8;i=i+1)begin
xor_all_bits = xor_all_bits ^ in[i];
end
end 
endfunction
assign parity=xor_all_bits(data);
initial begin
data = 8'b10101010; // Even number of 1s ? parity = 0
#1 $display("Data = %b, Odd Parity = %b", data, parity);
    
data = 8'b11100000; // Odd number of 1s ? parity = 1
#1 $display("Data = %b, Odd Parity = %b", data, parity);
$finish();
end
endmodule
