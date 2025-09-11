
module function_logicalAND;
function logicalAND;
input [7:0] data_in;
integer i;
reg [7:0]res;
begin
res=data_in[0];
for(i=1;i<8;i=i+1)begin
res=res&&data_in[i];
end
assign logicalAND=res;
end
endfunction
endmodule
