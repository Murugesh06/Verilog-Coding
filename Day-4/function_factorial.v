`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2025 10:13:42
// Design Name: 
// Module Name: function_factorial
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


module function_factorial;
integer result;
function automatic integer factorial;
input integer n;
begin
if(n<=1)
factorial=1;
else
factorial=n*factorial(n-1);
end
endfunction
initial begin
    

    result = factorial(5);  
    $display("Factorial of 5 is %0d", result);

    result = factorial(0);  
    $display("Factorial of 0 is %0d", result);

    result = factorial(3);  
    $display("Factorial of 3 is %0d", result);
  end

endmodule
