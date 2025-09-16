module top_module (
    input clk,
    input reset,   // Synchronous reset
    input x,
    output z
);
    localparam [2:0] a=3'b000,b=3'b001,c=3'b010,d=3'b011,e=3'b100;
    reg [2:0] state,next;
    always @(*)begin
        case(state)
            a:begin
                next=x?b:a;
                z=0;
            end
            b:begin
                next=x?e:b;
                z=0;
            end
            c:begin
                next=x?b:c;
                z=0;
            end
            d:begin
                next=x?c:b;
                z=1;
            end
            e:begin
                next=x?e:d;
                z=1;
            end
        endcase
    end
    always @(posedge clk)begin
        if(reset) state<=a;
        else state<=next;
    end
endmodule
