`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.08.2022 23:40:35
// Design Name: 
// Module Name: module_sbl
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


module module_sbl(

    input logic     [15 : 0]    switch_pi,
    input logic     [3 : 0]     botones_pi,
    output logic    [15 : 0]    leds_po
    
);
    
    always_comb begin
    
        //boton 1, primeros 4 leds
        if (botones_pi[0] == 0)
            leds_po[3:0] = switch_pi[3 : 0];   
        else
            leds_po[4:0] = 4'h0;
        
        //boton 2, segundos 4 leds
        if (botones_pi[1] == 0)
            leds_po[7:4] = switch_pi[7 : 4];   
        else    
            leds_po[7:4] = 4'h0;
        
        //boton 3, terceros 4 leds  
        if (botones_pi[2] == 0) 
            leds_po[11:8] = switch_pi[11 : 8];       
        else       
            leds_po[11:8] = 4'h0;

        //boton 4, cuartos 4 leds  
        if (botones_pi[3] == 0) 
            leds_po[15:12] = switch_pi[15 : 12];    
        else           
            leds_po[15:12] = 4'h0;       
        
    end
        
endmodule