`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2022 23:53:02
// Design Name: 
// Module Name: module_alu_resta
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


module module_alu_resta(
    input  logic                    alu_flagin_i,
    input  pkg_bits:: bits_t        alu_a_i,
    input  pkg_bits:: bits_t        alu_b_i,
    output pkg_bits:: bitsw_t       ALUResult_o                
    );
    
    import pkg_bits::*;
    logic [ BITS_WIDTH - 1 : 0 ] alu_b_i_inv;
    logic                        alu_flags_o;
    bits_t                       alu_result_o;
    
    assign alu_b_i_inv = ~alu_b_i +1'b1;

    module_alu_suma alu_restador(
                          .alu_flagin_i ( alu_flagin_i ),
                          .alu_a_i      ( alu_a_i      ),
                          .alu_b_i      ( alu_b_i_inv  ),
                          .ALUResult_o ( alu_result_o )
    );
    
    assign ALUResult_o = {alu_flags_o, alu_result_o};
    
endmodule
