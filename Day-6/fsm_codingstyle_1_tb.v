`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 20:16:03
// Design Name: 
// Module Name: fsm_codingstyle_1_tb
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


module fsm_codingstyle_1_tb;
reg clk,rst_n,ws,go;
wire ds,rd;
fsm_codingstyle_1 uut(.ds(ds),.rd(rd),.go(go),.ws(ws),.clk(clk),.rst_n(rst_n));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
        rst_n = 0;
        go = 0;
        ws = 0;
    #12 rst_n = 1;
        #10 go = 1;       // Request to go to READ
        #10 go = 0;       // Stay in READ until next state change
        #20 ws = 0;       // Move from DLY to DONE
        #10 ws = 1;       // Cause loop back to READ from DLY
         #20 ws = 0;       // Go to DONE again
        #10;              
        #50 $stop;
    end
    initial begin
    $monitor("Time=%0t | rst_n=%b go=%b ws=%b | state outputs => rd=%b ds=%b",
                  $time, rst_n, go, ws, rd, ds);
    end      
endmodule
