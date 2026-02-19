module tb;
  reg clk,rst,en;
  reg[3:0] button;
  wire[7:0] c1,c2,c3,c4;
  
  evm dut(clk,rst,en,button,c1,c2,c3,c4);
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    en=0;
    #20
    rst=0;
    #10
    en=1;
    #5
    button=1;#10;
    button=2;#10;
    button=3;#10;
    button=1;#10;
    button=4;#10;
    button=4;#10;
    en=0;
    #500
    $finish;
  end
  
  initial begin
    $monitor("time=%0t||c1=%0d c2=%0d c3=%0d c4=%0d",$time,c1,c2,c3,c4);
  end
  
endmodule
