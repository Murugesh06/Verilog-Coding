module pwm(input clk,
           input rst,
           input [9:0] duty,
           output reg pwm_out);
  reg[9:0] counter;
  parameter PERIOD=1023;
  
  //counter logic
  always@(posedge clk or posedge rst)begin
    if(rst)
      counter<=0;
    else if(counter>=PERIOD)
      counter<=0;
    else
      counter<=counter+1;
  end
  
  //pwm logic
  always@(posedge clk or posedge rst)begin
    if(rst)
      pwm_out<=0;
    else if(counter<duty)
      pwm_out<=1;
    else
      pwm_out<=0;
  end
  
endmodule
