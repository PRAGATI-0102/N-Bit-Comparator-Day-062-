`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2023 11:26:17 PM
// Design Name: 
// Module Name: Nbit_Comparator
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


module Nbit_Comparator(
        input [3:0] a,
        input [3:0] b,
        output reg y2,y1,y0
        );
        
        
      always@(a or b)
      begin
        if(a>b) 
        begin 
              y0=1'b1;
              y1=1'b0;
              y2=1'b0;
        end
      
        if(a==b) 
        begin 
            y0=1'b0;
            y1=1'b1;
            y2=1'b0;
        end
        
        if(a<b) 
        begin 
          y0=1'b0;
          y1=1'b0;
          y2=1'b1;
        end
        
       end
endmodule
