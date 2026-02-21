module tb;
  reg [7:0] binary;
  wire [11:0] bcd;
  
  bin_to_bcd dut(binary,bcd);
  
  initial begin
    $monitor("binary->decimal=%0d bcd=%0b",binary,bcd);
    binary=8'd0;#10
    binary=8'd13;#10
    binary=8'd15;#10
    binary=8'd99;#10
    $finish;
  end
  
endmodule
