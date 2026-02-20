module door_lock(input clk,rst,digit_valid,enter,
                 input [3:0] digit,
                 output reg unlock,alarm,lock_out);
  
  parameter IDLE=3'd0,ENTER=3'd1,CHECK=3'd2,OPEN=3'd3,ERROR=3'd4,LOCK=3'd5;
  parameter STORED_PASS=16'h1234;
  
  reg[15:0] entered_pass;
  reg[2:0] state,next_state;
  reg[1:0] wrong_count;
  reg[1:0] digit_count;
  
  //state register logic
  always @(posedge clk or posedge rst)begin
    if(rst)
      state<=IDLE;
    else
      state<=next_state;
  end
  
  //next_state logic
  always @(*)begin
    next_state=state;
    case(state)
      IDLE:begin
        if(digit_valid)
          next_state=ENTER;
      end
      ENTER:begin
        if((enter==1'd1)&&(digit_count==2'd3))
          next_state=CHECK;
      end
      CHECK:begin
        if(entered_pass==STORED_PASS)
          next_state=OPEN;
      	else if(wrong_count==2'd2)
          next_state=LOCK;
      	else
          next_state=ERROR;
      end
      OPEN:begin
        next_state=IDLE;
      end
      ERROR:begin
        next_state=IDLE;
      end
      LOCK:begin
        next_state=LOCK;
      end
    endcase
  end
  
  //Datapath logic
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      unlock<=1'b0;
      alarm<=1'b0;
      lock_out<=1'b0;
      wrong_count<=2'd0;
      digit_count<=2'd0;
      entered_pass<=16'd0;
    end
    else begin
      unlock<=1'b0;
      alarm<=1'b0;
      case(state)
        IDLE:begin
          entered_pass<=16'd0;
          digit_count<=2'd0;
        end
        ENTER:begin
          if(digit_valid)begin
            entered_pass<={entered_pass[11:0],digit};
            digit_count<=digit_count+1'b1;
          end
        end
        CHECK:begin
          if(entered_pass==STORED_PASS)
            wrong_count<=1'b0;
          else
            wrong_count<=wrong_count+1'b1;
        end
        OPEN:begin
          unlock<=1'b1;
        end
        ERROR:begin
          alarm<=1;
        end
        LOCK:begin
          alarm<=1'b1;
          lock_out<=1'b1;
        end
      endcase
    end
  end
  
endmodule
