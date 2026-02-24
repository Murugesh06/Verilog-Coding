module tb;
  reg clk,rst;
  reg [7:0] A;
  reg [7:0] B;
  reg [3:0] opcode;
  wire [7:0] result;
  wire carry,zero,overflow;
  
  alu dut(clk,rst,A,B,opcode,result,carry,zero,overflow);
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    opcode=0;
    #20
    rst=0;
    A=8'b01100110;
    B=8'b01010101;
    #10
    opcode=4'b0000;#10
    opcode=4'b0001;#10
    opcode=4'b0010;#10
    opcode=4'b0011;#10
    opcode=4'b0100;#10
    opcode=4'b0101;#10
    opcode=4'b0110;#10
    opcode=4'b0111;#10
    opcode=4'b1000;#10
    $finish;
  end
  
  initial begin
    $monitor("time=%0t A=%0b B=%0b opcode=%0b result=%0b carry=%0b overflow=%0b zero=%0b",$time,A,B,opcode,result,carry,overflow,zero);
  end
  
endmodule
