module alu #(parameter WIDTH=8)(input clk,
                                input rst,
                                input [WIDTH-1:0] A,
                                input [WIDTH-1:0] B,
                                input [3:0] opcode,
                                output reg [WIDTH-1:0] result,
                                output reg carry,
                                output reg zero,
                                output reg overflow);
  
  reg [WIDTH-1:0] temp;
  
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      result<=0;
      carry<=0;
      overflow<=0;
    end
    
    else begin
      carry<=0;
      overflow<=0;
      case(opcode)
        4'b0000:begin
          temp<=A+B;
          result<=temp[WIDTH-1:0];
          carry<=temp[WIDTH];
          overflow<=(A[WIDTH-1:0]==B[WIDTH-1:0])&&(result[WIDTH-1:0]!=A[WIDTH-1:0]);
        end
        4'b0001:begin
          temp<=A-B;
          result<=temp[WIDTH-1:0];
          carry<=temp[WIDTH];
          overflow<=(A[WIDTH-1:0]!=B[WIDTH-1:0])&&(result[WIDTH-1:0]!=A[WIDTH-1:0]);
        end
        4'b0010:result<=A&B;
        4'b0011:result<=A|B;
        4'b0100:result<=~A;
        4'b0101:result<=A<<1;
        4'b0110:result<=A>>1;
        4'b0111:result<=A^B;
        4'b1000:begin
          if(A==B)
            result<=0;
          else if(A>B)
            result<=1;
          else
            result<=-1;
        end
        default:result<=0;
      endcase
    end
  end
  
  //zero flag
  always @(*)begin
    zero=(result==0);
  end
  
endmodule
    
