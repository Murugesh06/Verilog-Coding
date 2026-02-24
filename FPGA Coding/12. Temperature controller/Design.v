module temp_monitor #(parameter WIDTH=10,
                      parameter WARNING_TEMP=10'd500,
                      parameter CRITICAL_TEMP=10'd800)(input clk,
                                                       input rst,
                                                       input [WIDTH-1:0] temp_in,
                                                       input temp_valid,
                                                       output reg[WIDTH-1:0] temp_out,
                                                       output reg alarm,
                                                       output reg fan_on,
                                                       output reg overheat_led);
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      temp_out<=0;
      alarm<=0;
      fan_on<=0;
      overheat_led<=0;
    end
    else if(temp_valid)begin
      temp_out<=temp_in;
      if(temp_out>=CRITICAL_TEMP)begin
        alarm<=1;
        fan_on<=1;
        overheat_led<=1;
      end
      else if(temp_out>=WARNING_TEMP)begin
        alarm<=0;
        fan_on<=1;
        overheat_led<=0;
      end
      else begin
        alarm<=0;
        fan_on<=0;
        overheat_led<=0;
      end
    end
  end
  
endmodule
  	                 
