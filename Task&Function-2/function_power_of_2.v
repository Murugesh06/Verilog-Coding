
module function_power_of_2;
function [2:0]power_of_2;
input [2:0] data_in;
begin
if(data_in%2==0) 
power_of_2=3'd1;
else
power_of_2=3'd0;
end
endfunction
endmodule
