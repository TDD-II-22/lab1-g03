`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2022 06:17:10 PM
// Design Name: 
// Module Name: module_alu_sumador
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


module module_alu_sumador #( parameter BITS = 8 )(
    input  logic                   alu_flagin_i,
    input  logic  [ BITS - 1 : 0 ] alu_a_i,
    input  logic  [ BITS - 1 : 0 ] alu_b_i,
    output logic  [ BITS - 1 : 0 ] alu_result_o,
    output logic                   alu_flags_o
    );
    logic [ BITS - 1 : 0] cero = 0;
    logic [ BITS     : 0 ] alu_result_wo;
    always_comb begin
        alu_result_wo = alu_a_i + alu_b_i + alu_flagin_i;
        if ( ( alu_a_i [ BITS - 1 ] == alu_b_i [ BITS - 1 ] ) && ( alu_a_i [ BITS - 1 ] == 1'b0 ) ) begin
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
            if ( alu_result_wo [ BITS - 1 ] == 1'b1 )begin
                alu_result_o = alu_result_wo [ BITS - 1 : 0 ];
                alu_flags_o  = alu_result_wo [ BITS         ];
            end 
            else begin
                alu_result_o = alu_result_wo [ BITS - 1 : 0 ];
                alu_flags_o  = 1'bX;
            end 
        end
        
        else if ( ( alu_a_i [ BITS - 1 ] == alu_b_i [ BITS - 1 ] ) && ( alu_a_i [ BITS - 1 ] == 1'b1 ) ) begin
            if ( alu_result_wo [ BITS ] == 0 /*1*/) begin
                if ( alu_flagin_i ) begin
                    alu_result_o = alu_result_wo [ BITS - 1 : 0 ] - 1'b1 - 1'b1;
                    //alu_flags_o  = alu_result_wo [ BITS         ];
                    alu_flags_o  = 1'bX;
                end
                
                else begin
                    alu_result_o = alu_result_wo [ BITS - 1 : 0 ];
                    //alu_flags_o  = alu_result_wo [ BITS         ];
                    alu_flags_o  = 1'bX;
                end
            end
            
            else begin
                if ( alu_flagin_i ) begin
                    alu_result_o = alu_result_wo [ BITS - 1 : 0 ] - 1'b1 - 1'b1;
                    //alu_flags_o  = 1'bX;
                    alu_flags_o  = alu_result_wo [ BITS         ];
                end 
                
                else begin
                    alu_result_o = alu_result_wo [ BITS - 1 : 0 ];
                    //alu_flags_o  = 1'bX;
                    alu_flags_o  = alu_result_wo [ BITS         ];
                end 
            end
        end
  
        else begin 
            alu_result_o = alu_result_wo [ BITS - 1 : 0 ] ;
            alu_flags_o  = 1'bX;
        end
    end  
endmodule
