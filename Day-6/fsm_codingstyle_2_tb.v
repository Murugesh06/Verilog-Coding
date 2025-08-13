`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 20:39:19
// Design Name: 
// Module Name: fsm_codingstyle_2_tb
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


module fsm_codingstyle_2_tb;
    reg clk;
    reg rst_n;
    reg go;
    reg ws;
    wire ds;
    wire rd;
   fsm_codingstyle_2 uut (
        .ds(ds),
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
        #12 rst_n = 1;
        #10 go = 1;
        #10 go = 0;   
        #20 ws = 0;
        #10;
        #10 go = 1;  // Move to READ
        #10 go = 0;  // Clear go
        #10 ws = 1;  // Cause loop from DLY -> READ
        #20 ws = 0;  // Then move to DONE
        #20 $stop; 
    end
    initial begin
        $monitor("Time=%0t | rst_n=%b go=%b ws=%b | rd=%b ds=%b",
                 $time, rst_n, go, ws, rd, ds);
    end
endmodule
