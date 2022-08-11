`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2022 03:49:48 PM
// Design Name: 
// Module Name: module_deco_a_7
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


module module_deco_a_7(
    input logic  [ 3 : 0 ] entrada_deco,
    output logic [ 6 : 0 ] salida_deco
    );
    always_comb begin
		case( entrada_deco )
          4'b0000 : salida_deco = 7'b1000000;
          4'b0001 : salida_deco = 7'b1111001;
          4'b0010 : salida_deco = 7'b0100100;
          4'b0011 : salida_deco = 7'b0110000;
          4'b0100 : salida_deco = 7'b0011001;
          4'b0101 : salida_deco = 7'b0010010;
          4'b0110 : salida_deco = 7'b0000010;
          4'b0111 : salida_deco = 7'b1111000;
          4'b1000 : salida_deco = 7'b0000000;
          4'b1001 : salida_deco = 7'b0010000;
          4'b1010 : salida_deco = 7'b0001000; 
          4'b1011 : salida_deco = 7'b0000011;
          4'b1100 : salida_deco = 7'b1000110;
          4'b1101 : salida_deco = 7'b0100001;
          4'b1110 : salida_deco = 7'b0000110;
          4'b1111 : salida_deco = 7'b0001110;
		endcase
	end
endmodule
