module tb;
  reg clk,rst,digit_valid,enter;
  reg [3:0] digit;
  wire unlock,alarm,lock_out;
  
  door_lock dut(clk,rst,digit_valid,enter,digit,unlock,alarm,lock_out);
  always #5 clk=~clk;
  
  task send_digit(input [3:0] d);
    begin
      @(posedge clk)
      digit=d;
      digit_valid=1;
      @(posedge clk)
      digit_valid=0;
    end
  endtask
  
  task press_enter();
    begin
      @(posedge clk)
      enter=1;
      @(posedge clk)
      enter=0;
    end
  endtask
  
  initial begin
    clk=0;
    rst=1;
    digit_valid=0;
    digit=0;
    enter=0;
    #20
    rst=0;
    $display("TEST 1: Correct Password");
    send_digit(4'h1);
    send_digit(4'h2);
    send_digit(4'h3);
    send_digit(4'h4);
    press_enter();
    #20
    $display("Unlock = %0b Alarm = %0b Lockout = %0b",unlock, alarm, lock_out);
    #20
    $display("TEST 2: Wrong Password");
    send_digit(4'h1);
    send_digit(4'h2);
    send_digit(4'h4);
    send_digit(4'h4);
    press_enter();
    #20
    $display("Unlock = %0b Alarm = %0b Lockout = %0b",unlock, alarm, lock_out);
    #20
    $display("TEST 3: Wrong Password-3 attempts");
    repeat(2)begin
    send_digit(4'h1);
    send_digit(4'h2);
    send_digit(4'h4);
    send_digit(4'h4);
    press_enter();
     #20;
    end
    $display("Unlock = %0b Alarm = %0b Lockout = %0b",unlock, alarm, lock_out);
    #20
    $finish;
  end
  
endmodule
