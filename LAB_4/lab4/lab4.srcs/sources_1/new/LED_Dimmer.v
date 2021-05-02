`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2021 10:30:05
// Design Name: 
// Module Name: FSM
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


/*

• On reset, the FSM should enter a state with all lights off.

• When you press left, you should see LA, then LA and LB, then LA, LB, and LC, 
  then finally all lights off again. This is illustrated in Figure 2 (a).

• This pattern should occur even if you release left during the sequence. If left is still 
  down when you return to the lights off state, the pattern should repeat.

• When you press right, you should see RA, then RA and RB, then RA, RB, and RC, 
  then finally all lights off again. This is illustrated in Figure 2 (b).

• It is up to you to decide what to do if the user makes left and right simultaneously 
  true. However, be sure to make a choice - this will keep your design simple and 
  make writing the Verilog code a lot easier.
  
*/


//========== Final State Machine ==========



module top(clk,clk_en,reset,right,left,LC,LB,LA,RA,RB,RC);
input clk,reset,right,left;
output clk_en,LC,LB,LA,RA,RB,RC;


//========== CLOCK DIVIDER ==========
reg [24:0] clk_count;

always@(posedge clk)
begin
    if(reset) clk_count <= 0;
    else    clk_count <= clk_count + 1;
end
assign clk_en = &clk_count; //when all bits of clk_count == 1 => &clk_count = 1
//==================================


FSM(clk_en,reset,right,left,LC,LB,LA,RA,RB,RC);
endmodule
//==========================================================================================





//==========================================================================================
module FSM(clock,reset,right,left,LC,LB,LA,RA,RB,RC);
input clock,reset,right,left;
output reg LC,LB,LA,RA,RB,RC;


reg [5:0] state, nextstate;

//There are 7 states:
parameter s0 = 6'b000000;
parameter s1 = 6'b001000;
parameter s2 = 6'b011000;
parameter s3 = 6'b111000;
parameter s4 = 6'b000100;
parameter s5 = 6'b000110;
parameter s6 = 6'b000111;



// === STATE REGISTER ===
// This register keeps track of the present state; at every clock cycle, 
// the present state is replaced by the next state.

//On reset, the FSM should enter a state with all lights off.
always @ (posedge clock, posedge reset)
    if(reset) state <= s0;
    else      state <= nextstate;
    

// === NEXT STATE LOGIC ===
// Where the next state is determined by the present state and current inputs.











reg[2:0] counter;
reg[2:0] cutoff;

always@(posedge clock) begin
    if(counter < 3) counter <= counter + 1;
    else    counter <= 0;
end


parameter c0 = 0;
parameter c1 = 1;
parameter c2 = 2;
parameter c3 = 3;


always@(cutoff) begin
    case(cutoff)
        c0: cutoff <= c1;
        c1: cutoff <= c2;
        c2: cutoff <= c3;
        c3: cutoff <= c0;
    endcase
end
    
always@(state,left,right,counter,cutoff) begin
    LC <= (state[5]) ? (counter < cutoff):0;
    LB <= (state[4]) ? (counter < cutoff):0;
    LA <= (state[3]) ? (counter < cutoff):0;
    RA <= (state[2]) ? (counter < cutoff):0;
    RB <= (state[1]) ? (counter < cutoff):0;
    RC <= (state[0]) ? (counter < cutoff):0;
end
//=========================================












always@(*) begin

    case(state)
    
    s0: if(left) begin
                     nextstate = s1;
                     cutoff <= 1;
                     LC <= (cutoff < counter);
                     cutoff <= 2;
                     LC <= (cutoff < counter);
                     cutoff <= 3;
                     LC <= (cutoff < counter);
                 end    
        else if(right)   nextstate = s4;
        
    s1: if(left)   nextstate = s2;
        else if(right)    nextstate = s4;
        
    s2: if(left)   nextstate = s3;
        else if(right)    nextstate = s4;
        
    s3: if(left)   nextstate = s0;
        else if(right)    nextstate = s4;
        
    s4: if(right)   nextstate = s5;
        else if(left)    nextstate = s1;
        
    s5: if(right)   nextstate = s6;
        else if(left)    nextstate = s1;
        
    s6: if(right)   nextstate = s0;
        else if(left)    nextstate = s1; 
        
    default nextstate = s0;
         
    endcase
end    
    
// === OUTPUT LOGIC ==
// A new FSM is created in order for the leds to interchange between brightness-states

/*
We can use PWM (Pulse Width Modulation) to control the brightnesso of the LEDs.
We make a counter that counts from 0 to 100 (To rappresent 0% to 100%)
Then we make a new final state machine that checks the state of a reg cutoff
whitch turns the LED on if (counter < cutoff) and off else

The clock diviser from the top module divides the frequency by 2^25 whitch reduces the frequency to ~3Hz
so we can look at 4 states: s0 = 0, s1 = 1, s2 = 2, s3 = 3 of cutoff:
*/

endmodule