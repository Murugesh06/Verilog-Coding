module fsm_divisibleby5(
input clk,reset,din,output reg dout
    );
    localparam [2:0] a=3'd0,
                     b=3'd1,
                     c=3'd2,
                     d=3'd3,
                     e=3'd4;
     reg [2:0]state,next_state;
     always @(*)begin
     case(state)
     a:next_state=din?b:a;
     b:next_state=din?d:c;
     c:next_state=din?a:e;
     d:next_state=din?c:b;
     e:next_state=din?e:d;
     default:next_state=a;
     endcase
     end
     always @(posedge clk)begin
     if(reset) state<=a;
     else state<=next_state;
     end
     always @(*)begin 
     dout=(state==a);  
     end                  
endmodule
