`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 21:06:58
// Design Name: 
// Module Name: fsm_coding_style_3
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


module fsm_coding_style_3_tb;
    reg clk;
    reg rst_n;
    reg go;
    reg ws;
    wire ds;
    wire rd;
    fsm_coding_style_3 uut(.ds(ds),
        .rd(rd),
        .go(go),
        .ws(ws),
        .clk(clk),
        .rst_n(rst_n)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        go = 0;
        ws = 0;

        // Apply reset
        #12 rst_n = 1;

        // IDLE ? READ
        #10 go = 1;
        #10 go = 0;

        // READ ? DLY
        #20 ws = 0;  // DLY ? DONE

        // DONE ? IDLE
        #10;

        // IDLE ? READ ? DLY ? READ (loop via ws=1)
        #10 go = 1;  // IDLE ? READ
        #10 go = 0;  
        #10 ws = 1;  // Loop back from DLY to READ
        #20 ws = 0;  // Then go to DONE
        #30 $stop;
    end

    initial begin
        $monitor("Time=%0t | rst_n=%b go=%b ws=%b | rd=%b ds=%b",
                  $time, rst_n, go, ws, rd, ds);
    end
endmodule
