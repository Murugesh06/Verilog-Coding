module stopwatch_timer #(parameter CLK_FREQ=50_000_000)
  					  (input clk,rst,
                       input mode,    //mode=0->stopwatch,1->timer
                       input start,
                       input load,
                       input [3:0] load_min_ones,
                       input [3:0] load_min_tens,
                       input [3:0] load_sec_ones,
                       input [3:0] load_sec_tens,
                       output reg [3:0] min_ones,
                       output reg [3:0] min_tens,
                       output reg [3:0] sec_ones,
                       output reg [3:0] sec_tens,
                       output reg done);
  
  reg [$clog2(CLK_FREQ)-1:0] clk_count;
  reg one_sec;
  
  //clk_count logic
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      clk_count<=0;
      one_sec<=0;
    end
    else if(clk_count==CLK_FREQ-1)begin
      clk_count<=0;
      one_sec<=1;
    end
    else begin
      clk_count<=clk_count+1;
      one_sec<=0;
    end
  end
  
  //Time logic
  always @(posedge clk or posedge rst)begin
    if(rst)begin
      min_ones<=0;
      min_tens<=0;
      sec_ones<=0;
      sec_tens<=0;
      done<=0;
    end
    else begin
      if(mode&&load)begin
        min_ones<=load_min_ones;
        min_tens<=load_min_tens;
        sec_ones<=load_sec_ones;
        sec_tens<=load_sec_tens;
        done<=0;
      end
        
       else if(one_sec&&start)begin
         //stopwatch logic
         if(!mode)begin
         if(sec_ones==9)begin
           sec_ones<=0;
           if(sec_tens==5)begin
             sec_tens<=0;
             if(min_ones==9)begin
               min_ones<=0;
               if(min_tens==5)begin
                 min_tens<=0;
               end
               else
                 min_tens<=min_tens+1;
             end
             else 
               min_ones<=min_ones+1;
           end
           else
             sec_tens<=sec_tens+1;
         end
         else
           sec_ones<=sec_ones+1;
       end

    //Timer logic
    else begin
      if(min_tens==0&&min_ones==0&&sec_tens==0&&sec_ones==0)
        done<=1;
      else begin
        if(sec_ones==0)begin
          sec_ones<=9;
          if(sec_tens==0)begin
            sec_tens<=5;
            if(min_ones==0)begin
              min_ones<=9;
              if(min_tens==0)begin
                min_tens<=5;
              end
              else min_tens<=min_tens-1;
            end
            else min_ones<=min_ones-1;
          end
          else sec_tens<=sec_tens-1;
        end
        else sec_ones<=sec_ones-1;
      end
    end
       end
    end
  end
  
endmodule
