`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/10/2023 11:29:27 PM
// Design Name: 
// Module Name: Nbit_Comparator_tb
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


module Nbit_Comparator_tb();

        reg [3:0]a,b;
        wire y2,y1,y0;
        
        Nbit_Comparator dut(.a(a),.b(b),.y0(y0),.y1(y1),.y2(y2));
        
        initial
        begin
            a=4'b1000;b=4'b1010;
            #100;
            a=4'b0100;b=4'b1011;
            #100; 
            a=4'b1111; b=4'b1100;
            #100 ; 
            a=4'b0011;b=4'b1111;
            #100;
            a=4'b0111;b=4'b0111;
            #100;   
        end
        
        initial
        begin
        $monitor (a,b,y2,y1,y0);
        #500;
        $finish;
        end
    
endmodule
