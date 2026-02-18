module tb;
  reg clk,rst;
  reg [9:0] duty;
  wire pwm_out;
  
  pwm dut(clk,rst,duty,pwm_out);
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    #20
    rst=0;
    duty=10'd4;
    $display("Duty Cycle=%0d",duty);
    #1000
    $finish();
  end
  
  initial begin
    #25
    $monitor("time=%0t||counter=%0d||pwm_out=%0b",$time,dut.counter,pwm_out);
  end
  
endmodule
