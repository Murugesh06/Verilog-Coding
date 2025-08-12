`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 21:40:00
// Design Name: 
// Module Name: moore_overlapping
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


module moore_overlapping(input clk, reset, din,output reg detected);
reg [2:0] state, next_state;
    parameter S0 = 3'd0, 
              S1 = 3'd1, 
              S2 = 3'd2, 
              S3 = 3'd3, 
              S4 = 3'd4;
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
            S1: next_state = din ? S2 : S0;
            S2: next_state = din ? S2 : S3;
            S3: next_state = din ? S4 : S0;
            S4: begin
                    next_state = din ? S2 : S0; // allow overlap
                    detected = 1;
                end
        endcase
    end
endmodule
