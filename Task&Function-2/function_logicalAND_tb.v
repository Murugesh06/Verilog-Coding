
module function_logicalAND_tb;
reg [7:0]data_in;
function_logicalAND uut();
initial begin
data_in=8'b11111111;
$display("data=%b Result=%b",data_in,uut.logicalAND(data_in));
end
endmodule
