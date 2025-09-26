`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 19:45:24
// Design Name: 
// Module Name: task_toggle
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


module task_toggle;
reg sig;
task toggle_every_10;
    inout reg signal;
    integer i;
    begin
      for (i = 0; i < 5; i = i + 1) begin
        #10 signal = ~signal;
        $display("Time = %0t, Signal = %b", $time, signal);
      end
    end
  endtask
initial begin
    sig = 0;
    $display("Initial Signal = %b", sig);
    toggle_every_10(sig);  
    #10 
    $finish;
  end
endmodule
