`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2022 23:51:50
// Design Name: 
// Module Name: module_alu_suma
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


module module_alu_suma(
    input  logic                    alu_flagin_i,
    input  pkg_bits:: bits_t        alu_a_i,
    input  pkg_bits:: bits_t        alu_b_i,
    output pkg_bits:: bitsw_t       ALUResult_o
    );
    
    import pkg_bits::*;
    
    logic [ BITS_WIDTH - 1 : 0]     cero = 0;  
    logic [ BITS_WIDTH     : 0]     alu_result_wo;
    pkg_bits:: bits_t               alu_result_o;
    logic                           alu_flags_o;
    
    
    always_comb begin
        alu_result_wo = alu_a_i + alu_b_i + alu_flagin_i;
        if ( ( alu_a_i [ BITS_WIDTH - 1 ] == alu_b_i [ BITS_WIDTH - 1 ] ) && ( alu_a_i [ BITS_WIDTH - 1 ] == 1'b0 ) ) begin
            /*if ( ( ( alu_a_i == cero ) ||( alu_b_i == cero ) ) && (alu_flagin_i) ) begin
                if ( alu_result_wo [ BITS - 1 ] == 1 ) begin
                    alu_result_o = alu_result_wo [ BITS - 1 : 0 ];
                    alu_flags_o  = alu_result_wo [ BITS         ];
                end
                else begin
                    alu_result_o = alu_result_wo [ BITS - 1 : 0 ];
                    alu_flags_o  = 1'bX;
                end
            end*/
            if ( alu_result_wo [ BITS_WIDTH - 1 ] == 1'b1 )begin
                alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ];
                alu_flags_o  = alu_result_wo [ BITS_WIDTH         ];
            end 
            else begin
                alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ];
                alu_flags_o  = 1'b0;
            end 
        end
        
        else if ( ( alu_a_i [ BITS_WIDTH - 1 ] == alu_b_i [ BITS_WIDTH - 1 ] ) && ( alu_a_i [ BITS_WIDTH - 1 ] == 1'b1 ) ) begin
            if ( alu_result_wo [ BITS_WIDTH ] == 0 /*1*/) begin
                if ( alu_flagin_i ) begin
                    alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ] ;
                    //alu_flags_o  = alu_result_wo [ BITS         ];
                    alu_flags_o  = 1'b0;
                end
                
                else begin
                    alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ];
                    //alu_flags_o  = alu_result_wo [ BITS         ];
                    alu_flags_o  = 1'b0;
                end
            end
            
            else begin
                if ( alu_flagin_i ) begin
                    alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ] ;
                    //alu_flags_o  = 1'bX;
                    alu_flags_o  = alu_result_wo [ BITS_WIDTH         ];
                end 
                
                else begin
                    alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ];
                    //alu_flags_o  = 1'bX;
                    alu_flags_o  = alu_result_wo [ BITS_WIDTH         ];
                end 
            end
        end
  
        else begin 
            alu_result_o = alu_result_wo [ BITS_WIDTH - 1 : 0 ] ;
            alu_flags_o  = 1'b0;
        end
        
        ALUResult_o = {alu_flags_o, alu_result_o};
             
    end  
endmodule
