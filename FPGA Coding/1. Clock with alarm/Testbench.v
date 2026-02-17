module tb;
  reg clk,rst;
  reg [4:0] alarm_hr;
  reg [5:0] alarm_min;
  wire buzzer;
  
  fpga_clock_alarm dut(clk,rst,alarm_hr,alarm_min,buzzer);
  
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    alarm_hr=0;
    alarm_min=1;
    #20
    rst=0;
    #10000
    $finish();
  end
  
  initial begin
    $monitor("time=%0t||%0d:%0d:%0d||Buzzer=%0b",$time,dut.hr,dut.min,dut.sec,buzzer);
  end
  
endmodule
