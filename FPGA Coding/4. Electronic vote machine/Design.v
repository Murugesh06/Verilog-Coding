module evm(input clk,rst,en,
           input [3:0] button,
           output reg[7:0] c1,c2,c3,c4);
  
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      c1<=0;
      c2<=0;
      c3<=0;
      c4<=0;
    end
    else begin
      if(en)begin
        case(button)
          4'b0001:c1<=c1+1;
          4'b0010:c2<=c2+1;
          4'b0011:c3<=c3+1;
          4'b0100:c4<=c4+1;
        endcase
      end
      else begin
        c1<=c1;
        c2<=c2;
        c3<=c3;
        c4<=c4;
      end
    end
  end
  
endmodule
