module atm(input clk,rst,
           input card_insert,
           input pin_entered,
           input pin_valid,
           input withdraw,
           input deposit,
           input amount_valid,
           input sufficient_balance,
           output reg accept_deposit,
           output reg dispense_amount,
           output reg error,
           output reg transaction_done);
  
  parameter IDLE=3'd0,PIN_CHECK=3'd1,MENU=3'd2,WITHDRAW=3'd3,DEPOSIT=3'd4,SUCCESS=3'd5,ERROR=3'd6;
  
  reg [2:0] state,next_state;
  
  //state register logic
  always @(posedge clk or posedge rst)begin
    if(rst)
      state<=IDLE;
    else
      state<=next_state;
  end
  
  //next_state logic
  always @(*)begin
    case(state)
      IDLE:begin
        if(card_insert)
          next_state=PIN_CHECK;
          else
            next_state=IDLE;
      end
      PIN_CHECK:begin
        if(pin_entered&&pin_valid)
          next_state=MENU;
        else if(pin_entered&& !pin_valid)
          next_state=ERROR;
        else
          next_state=PIN_CHECK;
      end
      MENU:begin
        if(withdraw)
          next_state=WITHDRAW;
        else if(deposit)
          next_state=DEPOSIT;
        else 
          next_state=MENU;
      end
      WITHDRAW:begin
        if(amount_valid&&sufficient_balance)
          next_state=SUCCESS;
        else if(amount_valid && !sufficient_balance)
          next_state=ERROR;
        else
          next_state=WITHDRAW;
      end
      DEPOSIT:begin
        if(amount_valid)
          next_state=SUCCESS;
  		 else
           next_state=DEPOSIT;
      end
      SUCCESS: next_state=IDLE;
      ERROR: next_state=IDLE;
      default: next_state=IDLE;
    endcase
  end
  
  //output logic
  always @(*)begin
    dispense_amount=0;
    accept_deposit=0;
    error=0;
    transaction_done=0;
    case(state)
      WITHDRAW:begin
        if(amount_valid&&sufficient_balance)
            dispense_amount=1;
      end
      DEPOSIT:begin
        if(amount_valid)
          accept_deposit=1;
      end
      SUCCESS:transaction_done=1;
      ERROR:error=1;
    endcase
  end
    
endmodule
