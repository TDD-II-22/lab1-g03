`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2022 09:11:07 PM
// Design Name: 
// Module Name: module_switches_botones_leds
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


module module_switches_botones_leds(
    input        [15:0] switches_pi,
    input        [3:0]  botones_pi,
    output logic [3:0]  comb_1_po,
    output logic [3:0]  comb_2_po,
    output logic [3:0]  comb_3_po,
    output logic [3:0]  comb_4_po
    );
    always @ ( * ) begin
        if (botones_pi [ 0 ] == 0 )
            comb_1_po = switches_pi [ 3 : 0 ];
        else
            comb_1_po = 4'b0000;
            
        if(botones_pi [ 1 ] == 0 ) 
            comb_2_po = switches_pi [ 7 : 4 ];
        else
            comb_2_po = 4'b0000; 
        
        if(botones_pi [ 2 ] == 0) 
            comb_3_po = switches_pi [ 11 : 8 ];
        else
            comb_3_po = 4'b0000;
        
        if(botones_pi [ 3 ] == 0 ) 
            comb_4_po = switches_pi [ 15 : 12 ];
        else
            comb_4_po = 4'b0000;              
    end
    
endmodule