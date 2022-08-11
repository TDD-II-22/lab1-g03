`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 20:41:56
// Design Name: 
// Module Name: module_alu_and
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


module module_alu_and( 
    input   pkg_bits:: bits_t       ALUA_i,
    input   pkg_bits:: bits_t       ALUB_i,
    output  pkg_bits:: bitsw_t      ALUResult_o
    );
    
    import pkg_bits::*;
   
    assign ALUResult_o = {2'b0, ALUA_i & ALUB_i};
   
endmodule
