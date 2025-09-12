
module function_n_rightshift;
function [7:0]right_shift;
input [7:0] data_in;
input [2:0]n;
begin
right_shift=data_in>>n;
end
endfunction
endmodule
