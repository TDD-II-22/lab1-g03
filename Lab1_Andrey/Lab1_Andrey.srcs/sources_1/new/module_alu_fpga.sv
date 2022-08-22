`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 23:33:25
// Design Name: 
// Module Name: module_alu_fpga
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


module module_alu_fpga(
    input    logic [1 : 0]          btn_pi,
    input    pkg_bits:: bits_t      sw_ALUA_pi,
    input    pkg_bits:: bits_t      sw_ALUB_pi,
    input    logic                  sw_ALUFlagIn_pi,
    input    logic [3  : 0]         sw_ALUControl_pi,
    output   logic [7  : 0]         anodo_po,
    output   logic [6  : 0]         display_po,
    output   logic [15 : 0]         leds_po
    );
    
    import pkg_bits::*;  
    
    
             
    logic [3:0]             input_display_r;
    logic                   ALUFlags_po;
    pkg_bits:: bits_t       ALUResult_po;
    logic                   bandera_z_po;
    
    
    module_alu ALU (                      
        .ALUA_i(sw_ALUA_pi),         
        .ALUB_i(sw_ALUB_pi),         
        .ALUFlagIn_i(sw_ALUFlagIn_pi),    
        .ALUControl_i(sw_ALUControl_pi),   
        .ALUFlags_o(ALUFlags_po),     
        .ALUResult_o(ALUResult_po),    
        .bandera_z_o(bandera_z_po)      
    );
    
    module_7seg_decodificador display (
        .entrada_i(input_display_r),
        .display_o(display_po)    
    );
        
    always_comb
        begin
 
            anodo_po = 8'b1111_1110;
            leds_po  = 16'hf7af; 
         

            case (btn_pi)
                2'b00: input_display_r = ALUResult_po;
                2'b01: input_display_r = ALUFlags_po;
                2'b10: input_display_r = bandera_z_po;
                2'b11: input_display_r = ALUResult_po;
            endcase
                                      
        end 
    
    
    
endmodule
