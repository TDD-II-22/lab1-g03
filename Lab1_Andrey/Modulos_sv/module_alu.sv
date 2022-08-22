`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:31:18
// Design Name: 
// Module Name: module_alu
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


module module_alu(
    input    pkg_bits:: bits_t      ALUA_i,
    input    pkg_bits:: bits_t      ALUB_i,
    input    logic                  ALUFlagIn_i,
    input    logic [3 : 0]          ALUControl_i,
    output   logic                  ALUFlags_o,
    output   pkg_bits:: bits_t      ALUResult_o,
    output   logic                  bandera_z_o
    );
       
    
    import pkg_bits::*;  
    
    bitsw_t result_r;
    
    //Cables de salida de cada modulo     
    bitsw_t out_and_r;         //salida and
    bitsw_t out_or_r;          //salida or
    bitsw_t out_sumador_r;     //salida sumador
    bitsw_t out_incre_r;       //salida incre
    bitsw_t out_decre_r;       //salida decre
    bitsw_t out_not_r;         //salida not
    bitsw_t out_xor_r;         //salida xor
    bitsw_t out_shiftl_r;      //salida shift izquierda
    bitsw_t out_shiftr_r;      //salida shift derecha
    bitsw_t dato10_r;  
    bitsw_t dato11_r; 
    bitsw_t dato12_r;  
    bitsw_t dato13_r;  
    bitsw_t dato14_r;  
    bitsw_t dato15_r;
      
    always_comb begin
    
        dato10_r            = 0;
        dato11_r            = 0;
        dato12_r            = 0;
        dato13_r            = 0;
        dato14_r            = 0;
        dato15_r            = 0;
        
    end  
    
    module_alu_mux16a1 alu_mux(
        .dato0_i        (out_and_r),
        .dato1_i        (out_or_r),
        .dato2_i        (out_sumador_r),
        .dato3_i        (out_incre_r),
        .dato4_i        (out_decre_r),
        .dato5_i        (out_not_r),
        .dato6_i        (out_sumador_r),
        .dato7_i        (out_xor_r),
        .dato8_i        (out_shiftl_r),
        .dato9_i        (out_shiftr_r),
        .dato10_i       (dato10_r),
        .dato11_i       (dato11_r),
        .dato12_i       (dato12_r),
        .dato13_i       (dato13_r),
        .dato14_i       (dato14_r),
        .dato15_i       (dato15_r),
        .ALUControl_i   (ALUControl_i),
        .ALUResult_o    (result_r)
    );

    module_alu_bandera_z alu_bandera_z (
        .ALUResult_i    (ALUResult_o),
        .bandera_z_o    (bandera_z_o)
     );

    module_alu_and alu_and(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUResult_o    (out_and_r)
    );

    module_alu_or alu_or(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUResult_o    (out_or_r)
    );

    module_alu_incre alu_incre(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUFlagIn_i    (ALUFlagIn_i),
        .ALUResult_o    (out_incre_r)
    );

    module_alu_decre alu_decre(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUFlagIn_i    (ALUFlagIn_i),
        .ALUResult_o    (out_decre_r)
    );

    module_alu_not alu_not(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUFlagIn_i    (ALUFlagIn_i),
        .ALUResult_o    (out_not_r)
    );
   
    module_alu_xor alu_xor(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUResult_o    (out_xor_r)
    );

    module_alu_shift_l alu_shift_l(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUFlagIn_i    (ALUFlagIn_i),
        .ALUResult_o    (out_shiftl_r)
    );
      
        
    module_alu_shift_r alu_shift_r(
        .ALUA_i         (ALUA_i),
        .ALUB_i         (ALUB_i),
        .ALUFlagIn_i    (ALUFlagIn_i),
        .ALUResult_o    (out_shiftr_r)
    );
    
    assign {ALUFlags_o, ALUResult_o} = result_r;
    
endmodule
