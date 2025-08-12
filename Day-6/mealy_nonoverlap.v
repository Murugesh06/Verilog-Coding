`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 10:58:34
// Design Name: 
// Module Name: mealy_nonoverlap
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


module mealy_nonoverlap(input clk, reset, din,output reg detected);
reg [1:0] state, next_state;
parameter S0 = 2'd0, S1 = 2'd1, S2 = 2'd2, S3 = 2'd3;
 always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end
 always @(*) begin
        next_state = state;
        detected = 0;
        case (state)
            S0: next_state = din ? S1 : S0;
            S1: next_state = din ? S1 : S2;
            S2: next_state = din ? S3 : S0;
            S3: begin
                if (din) begin
                    detected = 1;
                    next_state = S0; 
                end
                else
                    next_state = S0;
            end
        endcase
    end
endmodule
