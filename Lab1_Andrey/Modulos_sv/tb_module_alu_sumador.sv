`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 16:03:44
// Design Name: 
// Module Name: tb_module_alu_sumador
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


module tb_module_alu_sumador;

    import pkg_bits::*;

    bits_in_t    ALUA_i;
    bits_in_t    ALUB_i;
    logic        ALUFlagIn_i;
    bits_t       ALUResult_o;
    
    module_alu_sumador sumador (                
        .ALUA_i         (ALUA_i),     
        .ALUB_i         (ALUB_i),     
        .ALUFlagIn_i    (ALUFlagIn_i),
        .ALUResult_o    (ALUResult_o)
    );
    
    initial begin
        #10
        ALUA_i = 8'ha1;
        ALUB_i = 8'h0a;
        ALUFlagIn_i = 0;
        #100  
        #10
        $finish;
    end
    
    
endmodule
