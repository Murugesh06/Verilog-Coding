module traffic(input clk,
               input rst,
               output reg green,
               output reg yellow,
               output reg red);
  
  parameter green_time=10,yellow_time=3,red_time=7;
  typedef enum logic[1:0] {S_GREEN,S_YELLOW,S_RED} state_t;
  state_t current_state,next_state;
  reg[3:0] counter;
  
  //state register
  always@(posedge clk or posedge rst)begin
    if(rst)
      current_state<=S_GREEN;
    else
      current_state<=next_state;
  end
  
  //counter logic
  always@(posedge clk or posedge rst)begin
    if(rst)
      counter<=0;
    else if(counter==get_time(current_state)-1)
      counter<=0;
    else
      counter<=counter+1;
  end
  
  //next state logic
  always@(*)begin
    next_state<=current_state;
    case(current_state)
      S_GREEN:
        if(counter==green_time-1)
          next_state<=S_YELLOW;
      S_YELLOW:
        if(counter==yellow_time-1)
          next_state<=S_RED;
      S_RED:
        if(counter==red_time-1)
          next_state<=S_GREEN;
    endcase
  end
  
  //output logic
  always@(*)begin
    green=(current_state==S_GREEN);
    yellow=(current_state==S_YELLOW);
    red=(current_state==S_RED);
  end
  
  //get_time function
  function automatic get_time(state_t state);
    case(state)
      S_GREEN: return green_time;
      S_YELLOW: return yellow_time;
      S_RED: return red_time;
      default: return green_time;
    endcase
  endfunction
  
endmodule
      
    
