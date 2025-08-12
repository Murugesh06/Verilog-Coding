`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 09:15:52
// Design Name: 
// Module Name: mealy_overlapping
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


module mealy_overlapping(input clk, reset, din,output reg detected);
reg [1:0] state, next_state;
parameter s0=2'd0,s1=2'd1,s2=2'd2,s3=2'd3;
always @(posedge clk or posedge reset)begin
if(reset)
state<=s0;
else
state<=next_state;
end
always @(*)begin
next_state=state;
detected=0;
case (state)
            s0: next_state = din ? s1 : s0;
            s1: next_state = din ? s1 : s2;
            s2: next_state = din ? s3 : s0;
            s3: begin
                if (din) begin
                    detected = 1;
                    next_state = s1; // overlap
                end else
                    next_state = s2;
            end
        endcase
    end
endmodule
