module tb;
  reg clk,rst,mode,start,load;
  reg [3:0] load_min_ones,load_min_tens,load_sec_ones,load_sec_tens;
  wire [3:0] min_ones,min_tens,sec_ones,sec_tens;
  wire done;
  
  stopwatch_timer #(.CLK_FREQ(10)) dut(clk,rst,start,load,load_min_ones,load_min_tens,load_sec_ones,load_sec_tens,min_ones,min_tens,sec_ones,sec_tens,done);
  
  always #5 clk=~clk;
  
  task wait_one_sec;
    begin
      repeat(10) @(posedge clk);
      end
  endtask
  
  initial begin
    clk=0;
    rst=1;
    mode=0;
    start=0;
    load=0;
    load_min_tens = 0;
    load_min_ones = 0;
    load_sec_tens = 0;
    load_sec_ones = 0;
    #20
    rst=0;
    $display("Stopwatch mode");
    mode=0;
    start=1;
	wait_one_sec;
    wait_one_sec;
    wait_one_sec;
    $display("Time = %0d%0d:%0d%0d",min_tens, min_ones, sec_tens, sec_ones);
    start=0;
    $display("Timer Mode");
    mode=1;
    load=1;
    load_min_tens = 0;
    load_min_ones = 0;
    load_sec_tens = 0;
    load_sec_ones = 5;
    @(posedge clk)
    load=0;
    start=1;
    repeat(5) wait_one_sec;
    $display("Time after countdown = %0d%0d:%0d%0d,done=%0b",min_tens, min_ones, sec_tens, sec_ones,done);
    start=0;
    #50
    $display("FINISHED");
    $finish;
  end
   
endmodule
