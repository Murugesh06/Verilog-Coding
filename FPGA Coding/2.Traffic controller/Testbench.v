module tb;
  reg clk,rst;
  wire green,yellow,red;
  
  traffic dut(clk,rst,green,yellow,red);
  
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    #20
    rst=0;
    #500
    $finish();
  end
  
  initial begin
    $monitor("time=%0t||red=%0b yellow=%0b green=%0b",$time,red,yellow,green);
  end
  
endmodule
