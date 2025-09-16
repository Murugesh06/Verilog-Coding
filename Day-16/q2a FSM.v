module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    input w,
    output z
);
localparam [2:0] a=3'b000,b=3'b001,c=3'b010,d=3'b011,e=3'b100,f=3'b101;
    reg [2:0] state,next;
    always @(*)begin
        case(state)
            a:begin
                next=w?b:a;
            	z=0;
            end
            b:begin
                next=w?c:d;
                z=0;
            end
            c:begin
                next=w?e:d;
                z=0;
            end
            d:begin
                next=w?f:a;
                z=0;
            end
            e:begin
                next=w?e:d;
                z=1;
            end
            f:begin
                next=w?c:d;
                z=1;
            end
        endcase
    end
    always @(posedge clk)begin
        if(reset) state<=a;
        else state<=next;
    end
endmodule
