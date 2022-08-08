`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 02:53:56 PM
// Design Name: 
// Module Name: binario_bcd_v1
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
module ejercicio_2 (
    input        [15:0] switches,
    input        [3:0]  botones,
    output logic [3:0]  comb_1,
    output logic [3:0]  comb_2,
    output logic [3:0]  comb_3,
    output logic [3:0]  comb_4
    );
    
    logic [3:0] tres_a_cero;
    logic [3:0] siete_a_cuatro;
    logic [3:0] once_a_ocho;
    logic [3:0] quince_a_doce;
    always @ ( * ) begin
        if(botones[0]==0)
            tres_a_cero = switches[3:0];
        else
            tres_a_cero = 4'b0000;
            
        if(botones[1]==0) 
            siete_a_cuatro = switches[7:4];
        else
            siete_a_cuatro = 4'b0000; 
        
        if(botones[2]==0) 
            once_a_ocho = switches[11:8];
        else
            once_a_ocho = 4'b0000;
        
        if(botones[3]==0) 
            quince_a_doce = switches[15:12];
        else
            quince_a_doce = 4'b0000;              
    end
    assign comb_1 =tres_a_cero;
    assign comb_2=siete_a_cuatro;
    assign comb_3=once_a_ocho;
    assign comb_4=quince_a_doce;
endmodule
