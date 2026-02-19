module seven_segment(input clk,rst,
                     input [15:0] data,
                     output reg[6:0] seg,
                     output reg[3:0] an);
  reg [15:0] counter;
  reg [1:0] digit_selector;
  reg [3:0] current_digit;
  
  //counter logic-> to slow down the board clocking speed
  always @(posedge clk or posedge rst)begin
    if(rst)
      counter<=0;
    else
      counter<=counter+1;
  end
  
  //digit_selector logic->to select the 'an' line
  always @(posedge clk or posedge rst)begin
    if(rst)
      digit_selector<=0;
    else
      digit_selector<=counter[15:14];
  end
  
  //current_digit logic
  always @(*)begin
    case(digit_selector)
      2'b00:current_digit=data[3:0];
      2'b01:current_digit=data[7:4];
      2'b10:current_digit=data[11:8];
      2'b11:current_digit=data[15:12];
    endcase
  end
  
  //'an'line logic
  always @(*)begin
    an=4'b1111;
    an[digit_selector]=0;
  end
  
  //7 segment code
  always @(*)begin
    case(current_digit)
        4'd0: seg = 7'b1000000;
        4'd1: seg = 7'b1111001;
        4'd2: seg = 7'b0100100;
        4'd3: seg = 7'b0110000;
        4'd4: seg = 7'b0011001;
        4'd5: seg = 7'b0010010;
        4'd6: seg = 7'b0000010;
        4'd7: seg = 7'b1111000;
        4'd8: seg = 7'b0000000;
        4'd9: seg = 7'b0010000;
        default: seg = 7'b1111111;
    endcase
  end
  
endmodule
