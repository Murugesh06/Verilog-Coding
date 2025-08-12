`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 21:42:09
// Design Name: 
// Module Name: moore_overlapping_tb
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


module moore_overlapping_tb;
    reg clk;
    reg reset;
    reg din;
    wire detected;
    moore_overlapping uut( .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        // Initialize
        reset = 1;
        din = 0;
        #12 reset = 0; 
        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1);  // First detection here

        send_bit(1);  // Overlaps with previous detection
        send_bit(0);
        send_bit(1);  // Second detection here

        // Random sequence
        send_bit(1);
        send_bit(0);
        send_bit(0);
        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1);  

        #20 $stop;
    end
    task send_bit(input bit_val);
    begin
        din = bit_val;
        #10; 
    end
    endtask
    initial begin
        $monitor("Time=%0t | din=%b | detected=%b | state=%0d",
                  $time, din, detected, uut.state);
    end
endmodule
