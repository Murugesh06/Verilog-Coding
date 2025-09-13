// Note the Verilog-1995 module declaration syntax here:
module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;

    // Fill in state name declarations
    parameter A=1'b0,B=1'b1;
    reg state, next_state;

    always @(*)begin
        case(state)
            A:next_state=in?A:B;
            B:next_state=in?B:A;
        endcase
    end
    
    always @(posedge clk)begin
        if(reset) state<=B;
        else state<=next_state;
    end
    
    always @(*)begin
        case(state)
            A:out=1'b0;
            B:out=1'b1;
        endcase
    end
endmodule
