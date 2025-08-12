`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 21:04:03
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


module fsm_coding_style_3(ds, rd, go, ws, clk, rst_n);
    output ds, rd;
    input go, ws;
    input clk, rst_n;
    reg ds, rd;

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
    always @(posedge clk or negedge rst_n)
        if (!rst_n) begin
            ds <= 1'b0;
            rd <= 1'b0;
        end else begin
            case (next)
                IDLE: begin
                          ds <= 1'b0;
                          rd <= 1'b0;
                      end
                READ: begin
                          ds <= 1'b0;
                          rd <= 1'b1;
                      end
                DLY:  begin
                          ds <= 1'b0;
                          rd <= 1'b1;
                      end
                DONE: begin
                          ds <= 1'b1;
                          rd <= 1'b0;
                      end
            endcase
        end
endmodule
