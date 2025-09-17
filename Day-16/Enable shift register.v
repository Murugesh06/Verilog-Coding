module top_module (
    input clk,
    input reset,      // Synchronous reset
    output shift_ena);
    reg [2:0]state,next;
    localparam [2:0] S0=3'd0, S1=3'd1, S2=3'd2, S3=3'd3, S4=3'd4;
    always @(*)begin
        case(state)
            S0:next=(reset)?S1:S0;
            S1:next=S2;
            S2:next=S3;
            S3:next=S4;
            S4:next=S0;
        endcase
    end
    always @(posedge clk)begin
        state<=next;
    end
    assign shift_ena=(state==S1 | state==S2 | state==S3 | state==S4);
endmodule
