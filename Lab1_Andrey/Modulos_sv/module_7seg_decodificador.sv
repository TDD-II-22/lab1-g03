`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 20:01:37
// Design Name: 
// Module Name: module_7seg_decodificador
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


module module_7seg_decodificador(
    
    input   logic   [3 : 0]   entrada_i,
    output  logic   [6 : 0]   display_o
    
    );
    
    always_comb begin
      
        case (entrada_i)     
            4'h0: display_o = 7'b100_0000;
            4'h1: display_o = 7'b111_1001;
            4'h2: display_o = 7'b010_0100;
            4'h3: display_o = 7'b011_0000;
            4'h4: display_o = 7'b001_1001;
            4'h5: display_o = 7'b001_0010;
            4'h6: display_o = 7'b000_0010;
            4'h7: display_o = 7'b111_1000;
            4'h8: display_o = 7'b000_0000;
            4'h9: display_o = 7'b001_1000;
            4'hA: display_o = 7'b000_1000;
            4'hB: display_o = 7'b000_0011;
            4'hC: display_o = 7'b100_0110;
            4'hD: display_o = 7'b010_0001;
            4'hE: display_o = 7'b000_0110;
            4'hF: display_o = 7'b000_1110;       
        endcase
        
    end 
    
endmodule
