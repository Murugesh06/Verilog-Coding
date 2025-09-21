module top_module ();
reg clk,reset,t;
    wire q;
    tff uut(clk,reset,t,q);
    initial begin
        clk=0;
        forever #5 clk=~clk;
    end
    initial begin
        reset=0;
        #3 reset=1;
        #10 reset=0;
    end
    always @(posedge clk)begin
        if(reset) t<=0;
        else t<=1;
    end
endmodule
