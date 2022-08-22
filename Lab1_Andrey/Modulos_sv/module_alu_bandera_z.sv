`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:54:08
// Design Name: 
// Module Name: module_alu_bandera_z
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




module module_alu_bandera_z(
    input   pkg_bits:: bits_t       ALUResult_i,
    output  logic                   bandera_z_o
    );
    
    import pkg_bits::*;
       
    always_comb begin
        
        if( ~(ALUResult_i | 0) == 0)
            bandera_z_o = 1;
        else
            bandera_z_o = 0;
    end
    
endmodule
