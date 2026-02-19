module tb;
  reg clk,rst;
  reg [15:0] data;
  wire [6:0] seg;
  wire [3:0] an;
  
  seven_segment dut(clk,rst,data,seg,an);
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    #20
    rst=0;
    #5
    data=16'h0;
    #5
    data=16'h1;
    #500
    $finish;
  end
  
  initial begin
    $monitor("time=%0t|| line=%0b  seg=%0b  data=%0h",$time,an,seg,data);
  end
  
endmodule
