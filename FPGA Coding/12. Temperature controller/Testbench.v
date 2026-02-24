module tb;
  reg clk,rst;
  reg [9:0] temp_in;
  reg temp_valid;
  wire [9:0] temp_out;
  wire alarm;
  wire fan_on;
  wire overheat_led;
  
  temp_monitor dut(clk,rst,temp_in,temp_valid,temp_out,alarm,fan_on,overheat_led);
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    #20
    rst=0;
    temp_valid=1;
    temp_in=10'd400;  
    #10
    rst=1;
    #20
    rst=0;
    temp_valid=1;
    temp_in=10'd550;
    #10
    rst=1;
    #20
    rst=0;
    temp_valid=1;
    temp_in=10'd900;
    #500
    $finish();
  end
  
  initial begin
    $monitor("time=%0t|| temp_valid=%0b temp_in=%0d temp_out=%0d alarm=%0b fan_on=%0b overheat_led=%0b",$time,temp_valid,temp_in,temp_out,alarm,fan_on,overheat_led);
  end
  
endmodule
