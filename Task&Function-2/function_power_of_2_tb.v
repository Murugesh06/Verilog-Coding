
module function_power_of_2_tb;
reg [2:0] data_in;
function_power_of_2 uut();
initial begin
data_in=3'd3;
$display("data=%d Power_of_2=%d",data_in,uut.power_of_2(data_in));
end
endmodule
