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


module tb_module_alu;
    
    import pkg_bits::*;
    
    //INICIALIZACION DE DATOS
    
    bits_t               ALUA_i;
    bits_t               ALUB_i;
    logic                ALUFlagIn_i;
    logic    [3 : 0]     ALUControl_i;
    logic                ALUFlags_o;
    bits_t               ALUResult_o;
    logic                bandera_z_o;
    
    //INCIALIZAR MUX16A1
    
    module_alu alu(
                  
         .ALUA_i        (ALUA_i),      
         .ALUB_i        (ALUB_i),      
         .ALUFlagIn_i   (ALUFlagIn_i), 
         .ALUControl_i  (ALUControl_i),
         .ALUFlags_o    (ALUFlags_o),  
         .ALUResult_o   (ALUResult_o), 
         .bandera_z_o   (bandera_z_o)   
    );
    
    //GENEREACION DE DATOS DE PRUEBA
    
    initial begin
    
    ALUA_i                  =       4'hf;
    ALUB_i                  =       4'h9;
    ALUFlagIn_i             =       0;
    
    //and
    ALUControl_i            =       4'h0;
    #2
      
    //or                
    ALUControl_i            =       4'h1;
    #2 
    
    //suma sin carry                
    ALUControl_i            =       4'h2;
    #2
    
    //suma con carry
    ALUFlagIn_i             =       1;
    #2
       
    //incremento A            
    ALUControl_i            =       4'h3;
    ALUFlagIn_i             =       0;
    #2
    
    //incremento B
    ALUFlagIn_i             =       1;
    #2 
              
    //decremento A              
    ALUControl_i            =       4'h4;
    ALUFlagIn_i             =       0;
    #2
    
    //decremento B
    ALUFlagIn_i             =       1;
    #2
    
    //not A
    ALUControl_i            =       4'h5;
    ALUFlagIn_i             =       0;
    #2
    
    //not B
    ALUFlagIn_i             =       1;
    #2
    
    //resta sin carry
    ALUA_i                  =       4'h7;
    ALUB_i                  =       4'he;
    ALUControl_i            =       4'h6;
    ALUFlagIn_i             =       0;
    #2
    
    //resta con carry
    ALUFlagIn_i             =       1;
    #2
    ALUA_i                  =       4'hf;
    ALUB_i                  =       4'h9;
    
    //xor     
    ALUControl_i            =       4'h7;
    #2
    
    //corrimiento izquierda A agregando o
    ALUA_i                  =       4'h7;
    ALUB_i                  =       4'h2;            
    ALUControl_i            =       4'h8;
    ALUFlagIn_i             =       0;
    #2             
    
    //corrimiento izquierda A agregando 1
    ALUFlagIn_i             =       1;
    #2
    
    //corriento derecha A agregando 0
    ALUControl_i            =       4'h;
    ALUFlagIn_i             =       0;
    #2
    
    //corriento derecha A agregando 1
    ALUFlagIn_i             =       1;
    
    #2                  
    $finish;
    
    end
    
endmodule
