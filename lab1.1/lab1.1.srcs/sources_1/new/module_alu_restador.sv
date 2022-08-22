`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2022 09:44:27 AM
// Design Name: 
// Module Name: module_alu_restador
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


module module_alu_restador (
    input  logic                   alu_flagin_i,
    input  pkg_bits:: bits_in_t    alu_a_i,
    input  pkg_bits:: bits_in_t    alu_b_i,
    output pkg_bits:: bits_in_t    alu_result_o,
    output logic                   alu_flags_o
    );
    import pkg_bits::*;
    logic [ BITS_WIDTH - 1 : 0 ] alu_b_i_inv;
    always_comb begin
    alu_b_i_inv = ~alu_b_i +1'b1;
    end
    module_alu_sumador alu_restador(
                          .alu_flagin_i ( alu_flagin_i ),
                          .alu_a_i      ( alu_a_i      ),
                          .alu_b_i      ( alu_b_i_inv  ),
                          .alu_result_o ( alu_result_o ),
                          .alu_flags_o  ( alu_flags_o  )
    );
 
endmodule
