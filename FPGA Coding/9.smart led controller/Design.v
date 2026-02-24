module led_controller #(parameter CLK_FREQ=50_000_000,
                        parameter PWM_FREQ=1000)
  					 (input clk,rst,motion,
                      input [9:0] light_sensor,
                      output reg led_on,
                      output reg pwm_led);
  
  localparam PWM_MAX=CLK_FREQ/PWM_FREQ;
  localparam PWM_WIDTH=$clog2(PWM_MAX);
  reg [PWM_WIDTH-1:0] pwm_counter;
  reg [PWM_WIDTH-1:0] duty_cycle;
  
  //pwm_counter logic
  always @(posedge clk or posedge rst)begin
    if(rst)
      pwm_counter<=0;
    else if(pwm_counter==PWM_MAX-1)
      pwm_counter<=0;
    else
      pwm_counter<=pwm_counter+1;
  end
  
  //duty_cycle logic
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      led_on<=0;
      duty_cycle<=0;
    end
     
    else begin
      if(!motion)begin
        led_on<=0;
        duty_cycle<=0;
      end
      else begin
        led_on<=1;
        if(light_sensor<10'd300)
          duty_cycle<=PWM_MAX*80/100;
        else if(light_sensor<10'd700)
          duty_cycle<=PWM_MAX*40/100;
        else
          duty_cycle<=0;
      end
    end
  end
  
  //output logic
  always @(posedge clk or posedge rst)begin
    if(rst)
      pwm_led<=0;
    else
      pwm_led<=(pwm_counter<duty_cycle);
  end
  
endmodule
