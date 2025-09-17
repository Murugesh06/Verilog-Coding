module top_module (input a, input b, input c, output out);//
wire out_temp;
    assign out=~out_temp;
    andgate(out_temp,a,b,c,1,1);

endmodule
