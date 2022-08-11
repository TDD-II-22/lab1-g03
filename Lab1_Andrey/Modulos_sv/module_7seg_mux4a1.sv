`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:08:13
// Design Name: 
// Module Name: module_7seg_mux4a1
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


module module_7seg_mux4a1 # (parameter BITS = 16)(
    input  logic    [BITS - 1 : 0]  entrada_i,
    input  logic    [1 : 0]         selec_i,
    output logic    [3 : 0]         salida_o
    );
 
    always_comb begin  
      
        case(selec_i)
        
            2'h0: salida_o = entrada_i[3 : 0];         
            2'h1: salida_o = entrada_i[7 : 4];                        
            2'h2: salida_o = entrada_i[11 : 8];             
            2'h3: salida_o = entrada_i[15 : 12];
                         
        endcase  
        
    end
    
endmodule
