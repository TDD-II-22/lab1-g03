`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 19:43:18
// Design Name: 
// Module Name: module_alu_shift_r
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


module module_alu_shift_r(
    input   pkg_bits:: bits_t    ALUA_i,
    input   pkg_bits:: bits_t    ALUB_i,
    input   logic                ALUFlagIn_i,
    output  pkg_bits:: bitsw_t   ALUResult_o
    );
    
    import pkg_bits::*;
    
    bits_t corrimiento_r;
    logic carry_r;
    bits_t ALUA_inver_i; 
    
    integer i;
    integer ii;
    
    
    always_comb begin
        
        ALUA_inver_i = inverso(ALUA_i);
                   
        if(ALUFlagIn_i == 0) begin
            {carry_r, corrimiento_r} = ALUA_inver_i << ALUB_i;
        end else begin
            {carry_r, corrimiento_r} = ~ ( ~(ALUA_inver_i) << ALUB_i );
        end
        
        ALUA_inver_i = inverso(corrimiento_r);
        
        ALUResult_o = {carry_r, ALUA_inver_i};
                
    end
    
    function [BITS_WIDTH - 1 : 0] inverso (input [BITS_WIDTH - 1 : 0] in );
    
        ii = BITS_WIDTH - 1;
        
        for (i = 0; i < BITS_WIDTH ; i = i + 1)
        
            begin
                ALUA_inver_i[i] = in[ii];
                if (ii == 0)    
                    ii = BITS_WIDTH - 1;     
                else            
                    ii = ii - 1;
            end
            return ALUA_inver_i;
        
    endfunction
    
    
    
endmodule
