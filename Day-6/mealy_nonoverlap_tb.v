`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 11:01:44
// Design Name: 
// Module Name: mealy_nonoverlap_tb
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


module mealy_nonoverlap_tb;
reg clk, reset, din;
wire detected;
mealy_nonoverlap uut(.clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );
 always #5 clk = ~clk;
 initial begin
 clk = 0;
 reset = 1;
 din = 0;
 #10 reset = 0;
        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1); // Detect here
        send_bit(1);
        send_bit(0);
        send_bit(1); // Detect again

        // Extra pattern to verify reset behavior
        send_bit(1);
        send_bit(1);
        send_bit(0);
        send_bit(1);

        #20 $finish;
    end
 task send_bit(input bit_value);
        begin
            din = bit_value;
            #10; 
        end
    endtask
endmodule
