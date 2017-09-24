`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 05:59:44 PM
// Design Name: 
// Module Name: tb_myCounter
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


module tb_myCounter(

    );
    reg firstin;
    reg clock;
    reg reset;
    
    wire[3:0] OUT;
    
    myCounter MC(OUT, firstin, clock, reset);
    
    initial
        begin
        firstin = 1'b1;
        reset = 1'b0;
        clock = 1'b0;
        end
 
       always 
         #10 clock = ~clock;
        
    initial
         #400 $finish;
 
endmodule 
