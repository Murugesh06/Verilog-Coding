`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 21:33:23
// Design Name: 
// Module Name: moore_nonoverlapping_tb
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


module moore_nonoverlapping_tb;
    reg clk;
    reg reset;
    reg din;
    wire detected;
    moore_nonoverlapping uut(.clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        din = 0;
        #12 reset = 0;  

        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1);

        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1);

        send_bit(0);
        send_bit(1);
        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1);

        #20 $stop;
    end

    task send_bit(input bit_val);
    begin
        din = bit_val;
        #10; // wait one clock period
    end
    endtask
    initial begin
        $monitor("Time=%0t | din=%b | detected=%b | state=%0d",
                  $time, din, detected, uut.state);
    end
endmodule
