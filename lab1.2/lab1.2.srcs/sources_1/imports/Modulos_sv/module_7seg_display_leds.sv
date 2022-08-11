`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 06.08.2022 20:04:44
// Design Name: 
// Module Name: module_7seg_display_leds
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


module module_7seg_display_leds #(parameter BITS = 16) (
    input   logic   [1 : 0]             btn_pi,
    input   logic   [BITS - 1 : 0]      sw_pi,
    output  logic   [6: 0]              display_po,
    output  logic   [BITS - 1 : 0]      leds_po,
    output  logic   [7 : 0]             anodo_po    
    );
    
    logic [3 : 0]   salida_mux4a1_o;
    
    assign anodo_po = 8'b1111_1110;
    
    module_7seg_mux4a1 #(.BITS(BITS)) mux4a1_7seg(
        .entrada_i  (sw_pi),
        .selec_i    (btn_pi),
        .salida_o   (salida_mux4a1_o)
    );
    
    module_7seg_decodificador deco_7seg(
        .entrada_i  (salida_mux4a1_o),
        .display_o  (display_po)
    ); 
    
    always_comb
        begin
            case(btn_pi)
                2'h0: leds_po = 16'hF;
                2'h1: leds_po = 16'hF0;
                2'h2: leds_po = 16'hF00;
                2'h3: leds_po = 16'hF000;
            endcase 
        end
 
endmodule
