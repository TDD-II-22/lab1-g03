`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 06.08.2022 20:38:33
// Design Name: 
// Module Name: module_alu_mux16a1
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


module module_alu_mux16a1(
    input           pkg_bits:: bitsw_t           dato0_i,
    input           pkg_bits:: bitsw_t           dato1_i,
    input           pkg_bits:: bitsw_t           dato2_i,
    input           pkg_bits:: bitsw_t           dato3_i,
    input           pkg_bits:: bitsw_t           dato4_i,
    input           pkg_bits:: bitsw_t           dato5_i,
    input           pkg_bits:: bitsw_t           dato6_i,
    input           pkg_bits:: bitsw_t           dato7_i,
    input           pkg_bits:: bitsw_t           dato8_i,
    input           pkg_bits:: bitsw_t           dato9_i,
    input           pkg_bits:: bitsw_t           dato10_i,
    input           pkg_bits:: bitsw_t           dato11_i,
    input           pkg_bits:: bitsw_t           dato12_i,
    input           pkg_bits:: bitsw_t           dato13_i,
    input           pkg_bits:: bitsw_t           dato14_i,
    input           pkg_bits:: bitsw_t           dato15_i,
    input   logic   [3 : 0]                      ALUControl_i,
    output          pkg_bits:: bitsw_t           ALUResult_o
    );
    
    import pkg_bits::*;
    
    always @ (*) begin
    
        case(ALUControl_i)
        
                4'h0:    ALUResult_o = dato0_i;
                4'h1:    ALUResult_o = dato1_i;
                4'h2:    ALUResult_o = dato2_i;
                4'h3:    ALUResult_o = dato3_i;
                4'h4:    ALUResult_o = dato4_i;
                4'h5:    ALUResult_o = dato5_i;
                4'h6:    ALUResult_o = dato6_i;
                4'h7:    ALUResult_o = dato7_i;
                4'h8:    ALUResult_o = dato8_i;
                4'h9:    ALUResult_o = dato9_i;
                4'hA:    ALUResult_o = dato10_i;
                4'hB:    ALUResult_o = dato11_i;
                4'hC:    ALUResult_o = dato12_i;
                4'hD:    ALUResult_o = dato13_i;
                4'hE:    ALUResult_o = dato14_i;
                4'hF:    ALUResult_o = dato15_i;
                default: ALUResult_o = 0;
        endcase
    
    end
    
endmodule
