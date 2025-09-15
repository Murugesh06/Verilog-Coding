module top_module (
    input clk,
    input areset,
    input x,
    output z
); 
    localparam [2:0] a=2'b00,b=2'b01;
    reg [2:0] state,next;
    always @(*)begin
        case(state)
            a:begin
                if(x)begin
                    next=b;
                    z=1;
                end
                else begin
                    next=a;
                    z=0;
                end
            end
            b:begin
                next=b;
                z=x?0:1;
            end
        endcase
    end
    always @(posedge clk or posedge areset)begin
        if(areset) state<=a;
        else state<=next;
    end
   endmodule
