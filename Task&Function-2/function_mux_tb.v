
module function_mux_tb;
reg S0,S1;
function_mux uut();
initial begin
S1=1'b0;S0=1'b0;
#10
S1=1'b0;S0=1'b1;
#10
S1=1'b1;S0=1'b0;
#10
S1=1'b1;S0=1'b1;
$finish;
end
initial begin
$monitor("S1=%b S0=%b MUX_out=%b",S1,S0,uut.mux_out(S1,S0));
end
endmodule
