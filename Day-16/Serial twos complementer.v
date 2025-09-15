module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
parameter a=2'b00,b=2'b01,c=2'b10;
    reg [2:0]state,next;
    always @(*)begin
        case(state)
            a:next=x?b:a;
            b:next=x?c:b;
            c:next=x?c:b;
            default:next=a;
        endcase
    end
    always @(posedge clk or posedge areset)begin
        if(areset) state<=a;
        else state<=next;
    end
    assign z=(state==b);
endmodule
