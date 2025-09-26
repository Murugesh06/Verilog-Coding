`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 12:26:39
// Design Name: 
// Module Name: task_ledblink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module task_ledblink;
reg led;
task blink_led;
    input integer blink_count;
    input integer delay_time;
    output reg led_signal;
    integer i;
    begin
      for (i = 0; i < blink_count; i = i + 1) begin
        led_signal = ~led_signal;  
        $display("Time=%0t: LED = %b", $time, led_signal);
        #delay_time;
      end
    end
  endtask

  initial begin
    led = 0;
    blink_led(10, 5, led); 
    $finish;
  end
endmodule
