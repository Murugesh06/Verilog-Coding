module top_module (
    input clk,
    input a,
    output q );
    always @(posedge clk)begin
        case(a)
            0:q=1;
            1:q=0;
        endcase
    end
endmodule
