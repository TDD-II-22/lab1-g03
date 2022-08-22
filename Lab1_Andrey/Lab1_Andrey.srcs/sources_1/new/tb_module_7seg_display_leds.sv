`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 08.08.2022 18:51:00
// Design Name: 
// Module Name: tb_module_7seg_display_leds
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


module tb_module_7seg_display_leds;
    
    parameter BITS = 16; 
    
    logic   [1 : 0]             btn_pi;    
    logic   [BITS - 1: 0]       sw_pi;    
    logic   [6: 0]              display_po;
    logic   [BITS - 1 : 0]      leds_po;   
    logic   [7 : 0]             anodo_po;
    
    /*
        -->Se define el parametro de la 
        cantidad de bits a mostrar.
        
        -->NOTA1: no superar los 16 bits
        dado que la FPA solo cuenta con 16 switchs
        
        -->NOTA2: colocar unicamente multiplos de 4
        
    */
   
    
    module_7seg_display_leds #(.BITS(BITS)) display_leds (
                       
        .btn_pi(btn_pi),      
        .sw_pi(sw_pi),       
        .display_po(display_po),  
        .leds_po(leds_po),     
        .anodo_po(anodo_po)    
            
    );   
    
    initial begin
    
        btn_pi = 0;
               
        repeat (4)
         
            begin       
              sw_pi = {$random} %16'hffff; 
              #10 
              btn_pi = btn_pi + 1;
            end
            
        $finish;
    
    end
    
    

endmodule
