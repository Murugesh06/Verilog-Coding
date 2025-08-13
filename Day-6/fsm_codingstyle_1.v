`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 19:37:41
// Design Name: 
// Module Name: fsm_codingstyle_1
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


module fsm_codingstyle_1(ds, rd, go, ws, clk, rst_n);
output ds,rd;
input go,ws,clk,rst_n;
 parameter [1:0] IDLE = 2'b00,
                 READ = 2'b01,
                 DLY  = 2'b10,
                 DONE = 2'b11;
 reg [1:0] state, next;
 always @(posedge clk or negedge rst_n)
 if (!rst_n) 
 state <= IDLE;
 else 
 state <= next;
 always @(state or go or ws) begin
 next = 2'bx;
 case (state)
 IDLE: if (go) 
 next = READ;
 else 
 next = IDLE;
 READ: next = DLY;
 DLY:  if (ws) 
 next = READ;
 else 
 next = DONE;
 DONE: next = IDLE;
 endcase
 end
 assign rd = (state == READ || state == DLY);
 assign ds = (state == DONE);
 endmodule
