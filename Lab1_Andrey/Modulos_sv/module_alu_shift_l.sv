`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC 
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 06.08.2022 18:17:46
// Design Name: 
// Module Name: module_alu_shift_l
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


module module_alu_shift_l(
    input   pkg_bits:: bits_t    ALUA_i,
    input   pkg_bits:: bits_t    ALUB_i,
    input   logic                ALUFlagIn_i,
    output  pkg_bits:: bitsw_t   ALUResult_o
    );
    
    import pkg_bits::*;
    
    bits_t corrimiento_r;
    logic carry_r;
        
    always_comb begin
                
        if(ALUFlagIn_i == 0) begin
            {carry_r, corrimiento_r} = ALUA_i << ALUB_i;
        end else begin
            {carry_r, corrimiento_r} = ~ ( ~(ALUA_i) << ALUB_i );
        end
        
        ALUResult_o = {carry_r, corrimiento_r};
                
    end
    
endmodule
