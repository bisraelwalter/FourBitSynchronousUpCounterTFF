`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2017 05:58:14 PM
// Design Name: 
// Module Name: myCounter
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


module myCounter(
    output [3:0] Q,
    input firstin,
    input clock,
    input clear
    );
    
wire OUT1, OUT2; 
  
    and Q2 (OUT1 , Q[2], Q[1], Q[0]);  
    and Q3 (OUT2 , Q[1], Q[0]);    
        
    T_FF tff0(Q[0], firstin, clock, clear);    
    T_FF tff1(Q[1], Q[0], clock, clear);    
    T_FF tff2(Q[2], OUT2, clock, clear);    
    T_FF tff3(Q[3], OUT1, clock, clear);    
         
    endmodule
    
    module T_FF(
        output reg Q = 1'b0,
        input data, 
        input clock,
        input reset
        ); 
    
    always @ (posedge clock)
    begin
    if (!reset) begin
      if(data) 
        Q <= ~Q;
      else
        Q <= Q;
        end
    else
        Q <= 1'b0;
    
    end        
    endmodule  
