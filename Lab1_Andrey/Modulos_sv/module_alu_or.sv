`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:23:53
// Design Name: 
// Module Name: module_alu_or
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


module module_alu_or(

    input   pkg_bits:: bits_t       ALUA_i,
    input   pkg_bits:: bits_t       ALUB_i,
    output  pkg_bits:: bits_t       ALUResult_o,
    output  logic                   ALUFlags_o
    
    );
    /*
    import pkg_bits::*;
   
    assign ALUResult_o = ALUA_i | ALUB_i;
   
    assign ALUFlags_o = 0;
    */     
endmodule
