module top_module(
    input clk,
    input reset,    // Synchronous reset
    input in,
    output disc,
    output flag,
    output err);
    localparam [3:0] none=0,one=1,two=2,three=3,four=4,five=5,six=6,DISC=7,FLAG=8,ERR=9;
    reg [3:0]state,next;
    always@(*)begin
        case(state)
            none:next=(in)?one:none;
            one:next=(in)?two:none;
            two:next=(in)?three:none;
            three:next=(in)?four:none;
            four:next=(in)?five:none;
            five:next=(in)?six:DISC;
            six:next=(in)?ERR:FLAG;
            DISC:next=(in)?one:none;
            FLAG:next=(in)?one:none;
            ERR:next=(in)?ERR:none;
        endcase
    end
    always @(posedge clk)begin
        if(reset) state<=none;
        else state<=next;
    end
    assign disc=(state==DISC);
    assign flag=(state==FLAG);
    assign err=(state==ERR);
endmodule
