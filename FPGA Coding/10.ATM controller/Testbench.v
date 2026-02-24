 module tb;
  reg clk,rst,card_insert,pin_entered,pin_valid,withdraw,deposit,amount_valid,sufficient_balance;
  wire accept_deposit,dispense_amount,error,transaction_done;
  
  atm dut(clk,rst,card_insert,pin_entered,pin_valid,withdraw,deposit,amount_valid,sufficient_balance,accept_deposit,dispense_amount,error,transaction_done);
  
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rst=1;
    #20
    rst=0;
    $display("Withdraw Test:");
    card_insert=1;#10
    pin_entered=1;#10
    pin_valid=1;#10
    withdraw=1;#10
    amount_valid=1;#10
    sufficient_balance=1;#10
    $display("dispense_amount=%0b error=%0b transaction_done=%0b",dispense_amount,error,transaction_done);
    card_insert=0;
    pin_entered=0;
    pin_valid=0;
    withdraw=0;
    amount_valid=0;
    sufficient_balance=0;
    #10
    $display("Withdraw Test:");
    card_insert=1;#10
    pin_entered=1;#10
    pin_valid=1;#10
    withdraw=1;#10
    amount_valid=1;#10
    sufficient_balance=0;#10
    $display("dispense_amount=%0b error=%0b transaction_done=%0b",dispense_amount,error,transaction_done);
    card_insert=0;
    pin_entered=0;
    pin_valid=0;
    withdraw=0;
    amount_valid=0;
    sufficient_balance=0;
    #10
    $display("Deposit Test:");
    card_insert=1;#10
    pin_entered=1;#10
    pin_valid=1;#10
    deposit=1;#10
    amount_valid=1;#10
    $display("accept_deposit=%0b error=%0b transaction_done=%0b",accept_deposit,error,transaction_done);
    card_insert=0;
    pin_entered=0;
    pin_valid=0;
    deposit=0;
    amount_valid=0;
    sufficient_balance=0;
    #10
     $display("Deposit Test:");
    card_insert=1;#10
    pin_entered=1;#10
    pin_valid=1;#10
    deposit=1;#10
    amount_valid=0;#10
    $display("accept_deposit=%0b error=%0b transaction_done=%0b",accept_deposit,error,transaction_done);
    #100
    $finish;
  end
  
endmodule
