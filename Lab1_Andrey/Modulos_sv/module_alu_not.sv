`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:28:39
// Design Name: 
// Module Name: module_alu_not
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


module module_alu_not(
    input   pkg_bits:: bits_t       ALUA_i,
    input   pkg_bits:: bits_t       ALUB_i,
    input   logic                   ALUFlagIn_i,
    output  pkg_bits:: bitsw_t       ALUResult_o
    );
    
    import pkg_bits::*;
    
    
    always_comb begin
                
        if(ALUFlagIn_i == 0) begin
            ALUResult_o = {2'b0, ~ALUA_i};
        end else begin
            ALUResult_o = {2'b0, ~ALUB_i};
        end
        
    end
    
endmodule
