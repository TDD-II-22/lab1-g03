`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineers: Carlos Andrey Morales Zamora
//            Jose Andrés Vásquez Guillén
//            Cristopher McGuinness
//            Brainer Borge
// 
// Create Date: 04.08.2022 00:03:03
// Design Name: 
// Module Name: module_mux16a1
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


module module_mux4_a_1 #(parameter int BITS = 8)(

    input logic   [BITS - 1 : 0]    dato0_i,
    input logic   [BITS - 1 : 0]    dato1_i,
    input logic   [BITS - 1 : 0]    dato2_i,
    input logic   [BITS - 1 : 0]    dato3_i,
    input logic   [1 : 0]           selec_i,
    output logic  [BITS - 1 : 0]    salida_o
    );
    
    always @ (*) begin
    
        case(selec_i)
        
                4'h0: salida_o = dato0_i; 
                4'h1: salida_o = dato1_i;
                4'h2: salida_o = dato2_i;
                4'h3: salida_o = dato3_i;
        
        endcase
    
    end
    
endmodule