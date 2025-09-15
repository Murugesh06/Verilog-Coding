module top_module (
    input clk,
    input reset,   // Synchronous reset
    input s,
    input w,
    output z
);
    localparam [2:0] a=2'b00,b=2'b01;
    reg [2:0]state,next,w_record,cnt;
    
    always @(*)begin
        case(state)
            a:next=(s)?b:a;
            b:next=b;
        endcase
    end
    always @(posedge clk)begin
        if(reset) state<=a;
        else state<=next;
    end
    always @(posedge clk)begin
        if(reset) w_record<=0;
        else if(state==b)
            w_record<={w_record[1:0],w};
    end
    always @(posedge clk)begin
        if(reset) cnt<=0;
        else if(next==b)begin
            if(cnt==3) cnt<=1;
            else cnt<=cnt+1;
        end
    end
       assign z = ((cnt == 1) & ((w_record == 3'b011) | (w_record == 3'b101) | (w_record == 3'b110))); 
endmodule
