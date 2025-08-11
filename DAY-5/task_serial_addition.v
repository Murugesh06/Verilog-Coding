`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 18:54:39
// Design Name: 
// Module Name: task_serial_addition
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


module task_serial_addition;
reg [3:0] A, B;
wire [3:0] SUM;
wire  CARRY_OUT;
reg [3:0] sum_temp;
reg   carry_temp;
assign SUM = sum_temp;
assign CARRY_OUT = carry_temp;
task serial_add;
input  [3:0] a, b;
output [3:0] sum;
output       carry_out;
integer      i;
reg          carry;
begin
carry = 0;
for (i = 0; i < 4; i = i + 1) begin
sum[i] = a[i] ^ b[i] ^ carry;
carry = (a[i] & b[i]) | (a[i] & carry) | (b[i] & carry);
end
carry_out = carry;
end
endtask
initial begin
    A = 4'b1011; B = 4'b0110;  
    serial_add(A, B, sum_temp, carry_temp);
    $display("A = %b, B = %b => Sum = %b, Carry Out = %b", A, B, SUM, CARRY_OUT);

    A = 4'b1111; B = 4'b0001;  
    serial_add(A, B, sum_temp, carry_temp);
    $display("A = %b, B = %b => Sum = %b, Carry Out = %b", A, B, SUM, CARRY_OUT);

    $finish;
  end
endmodule
