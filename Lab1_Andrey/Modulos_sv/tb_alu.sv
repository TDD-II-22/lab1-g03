`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 21:57:28
// Design Name: 
// Module Name: tb_alu
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


module tb_alu;
    
    import pkg_bits::*;
    
    //INICIALIZACION DE DATOS
    
    pkg_bits:: bits_t   ALUA_i;
    pkg_bits:: bits_t   ALUB_i;
    logic               ALUFlagIn_i;
    logic      [3 : 0]  ALUControl_i;
    logic               ALUFlags_o;
    pkg_bits:: bits_t   ALUResult_o;
    pkg_bits:: bits_t   bandera_z;
    
    //INCIALIZAR MUX16A1
    
    module_alu alu(
                  
         .ALUA_i        (ALUA_i),      
         .ALUB_i        (ALUB_i),      
         .ALUFlagIn_i   (ALUFlagIn_i), 
         .ALUControl_i  (ALUControl_i),
         .ALUFlags_o    (ALUFlags_o),  
         .ALUResult_o   (ALUResult_o), 
         .bandera_z     (bandera_z)   
    );
    
    //GENEREACION DE DATOS DE PRUEBA
    
    initial begin
    
    ALUA_i = 8'hfa;
    ALUB_i = 8'hf;
    ALUFlagIn_i = 1;
    #5
    ALUControl_i = 4'h0;
    #10                  
    ALUControl_i = 4'h1;
    #10                  
    ALUControl_i = 4'h2;
    #10                  
    ALUControl_i = 4'h3;
    #10                  
    ALUControl_i = 4'h4;
    #10                  
    ALUControl_i = 4'h5;
    #10                  
    ALUControl_i = 4'h6;
    #10                  
    ALUControl_i = 4'h7;
    #10                  
    ALUControl_i = 4'h8;
    #10                  
    ALUControl_i = 4'h9;
    #10                  
    ALUControl_i = 4'hA;
    
    $finish;
    
    end
    
endmodule
