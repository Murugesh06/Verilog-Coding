module fpga_clock_alarm(input clk,
                        input rst,
                        input [4:0] alarm_hr,
                        input [5:0] alarm_min,
                        output reg buzzer);
  
  reg[25:0] count;
  reg clock;
  reg[4:0] hr;
  reg[5:0] min,sec;
  
  //clock divider
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      count<=0;
      clock<=0;
    end
    else begin
      if(count==26'd49_999_999)begin
        count<=0;
        clock<=~clock;
      end
      else
        count<=count+1;
    end
  end
  
  //Timer
  always@(posedge clock or posedge rst)begin
    if(rst)begin
      hr<=0;
      min<=0;
      sec<=0;
    end
    else begin
      if(sec==6'd59)begin
        sec<=0;
        if(min==6'd59)begin
          min<=0;
          if(hr==5'd23)begin
            hr<=0;
          end
          else begin
            hr<=hr+1;
          end
        end
        else begin
          min<=min+1;
        end
      end
      else begin
        sec<=sec+1;
      end
    end
  end
     
  //Alarm
  always@(posedge clock or posedge rst)begin
    if(rst)
      buzzer<=0;
    else begin
      if((min==alarm_min)&&(hr==alarm_hr))
        buzzer<=1;
      else 
        buzzer<=0;
    end
  end
  
endmodule
