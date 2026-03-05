module tb;
  parameter DWIDTH=16;
  parameter DEPTH=8;
  reg clk,rstn,w_en,r_en;
  reg [15:0] din;
  wire [15:0] dout;
  wire full,empty;
  
  sync_fifo dut(clk,rstn,w_en,r_en,din,dout,full,empty);
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    rstn=0;
    w_en=0;
    r_en=0;
    din=0;
    #10
    rstn=1;
    //#10
    w_en=1;
    repeat(5)begin
      din=$random;
      #10;
    end
    w_en=0;
    #10
    r_en=1;
    repeat(5)begin
      #10;
    end
    r_en=0;
    #20
    $finish;
  end
  
  initial begin
    $monitor("time=%0t,w_en=%0b,r_en=%0b,din=%0d,dout=%0d,full=%0b,empty=%0b",$time,w_en,r_en,din,dout,full,empty);
  end
  
endmodule
