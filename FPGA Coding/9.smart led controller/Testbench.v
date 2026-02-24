module tb;
  reg clk,rst,motion;
  reg [9:0] light_sensor;
  wire led_on,pwm_led;
  
  led_controller #(.CLK_FREQ(50_000_000),.PWM_FREQ(1000))
 dut(clk,rst,motion,light_sensor,led_on_pwm_led);
  
  always #500 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    motion=0;
    #2000
    rst=0;
    #5000
    motion=1;
    light_sensor=200;
    #10000
    light_sensor=100;
    #5000
    light_sensor=600;
    #5000
    light_sensor=650;
    #5000
    light_sensor=1000;
    #10000
    motion=0;
    $finish;
  end
  
  initial begin
    $monitor("time=%0t motion=%0b light_Sensor=%0d led_on=%0b pwm_led=%0b",$time,motion,light_sensor,led_on,pwm_led);
  end
  
endmodule
