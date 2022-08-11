`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2022 17:32:16
// Design Name: 
// Module Name: tb_module_7seg_deco
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


module tb_module_7seg_deco;

    logic   [3 : 0]   entrada_i;
    logic   [6 : 0]   display_o;
    
    module_7seg_decodificador deco (                      
        .entrada_i(entrada_i),       
        .display_o(display_o)        
    );
    
    initial begin
    
        entrada_i = 4'h0; 
              
        repeat (15) 
            begin       
              #10 
              entrada_i = entrada_i + 1;
            end
            
        $finish;
    
    end
        
        
            
                
                
        
endmodule
