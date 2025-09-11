
module function_mux;
function [1:0]mux_out;
input  S0,S1;
begin
if(S1==0 && S0==0) mux_out=2'b00;
else if(S1==0 && S0==1) mux_out=2'b01;
else if(S1==1 && S0==0) mux_out=2'b10;
else if(S1==1 && S0==1) mux_out=2'b11;
end
endfunction
endmodule
